/*
Arduino Template Library https://github.com/obiwanjacobi/atl
Written by Marc Jacobi
Copyright 2012-2015 All Rights Reserved

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*/

#ifndef __PORT_H__
#define __PORT_H__

#include <stdint.h>
// #include <sfr_defs.h>
#include <avr/io.h>

namespace ATL
{
    namespace MCU
    {

        // TODO: make device specific
        enum Ports //: uint8_t
        {
#ifdef PORTA
            PortA = 0,
#endif // PORTA
#ifdef PORTB
            PortB = 1,
#endif // PORTB
#ifdef PORTC
            PortC = 2,
#endif // PORTC
#ifdef PORTD
            PortD = 3,
#endif // PORTC
#ifdef PORTE
            PortE = 4,
#endif // PORTE
#ifdef PORTF
            PortF = 5,
#endif // PORTF
#ifdef PORTG
            PortG = 6,
#endif // PORTG
#ifdef PORTH
            PortH = 7,
#endif // PORTH
#ifdef PORTI
            PortI = 8,
#endif // PORTI
#ifdef PORTJ
            PortJ = 9,
#endif // PORTJ
#ifdef PORTK
            PortK = 10,
#endif // PORTK
#ifdef PORTL
            PortL = 11,
#endif // PORTL
        };

        enum PinIO //: uint8_t
        {
            Input,
            Output
        };

        enum Pins //: uint8_t
        {
            Pin0,
            Pin1,
            Pin2,
            Pin3,
            Pin4,
            Pin5,
            Pin6,
            Pin7
        };

        /*
         * Represents a complete 8-bit port on the MCU.
         */
        template <const Ports PortId>
        class Port
        {
        private:
            Port() {}

        public:
            // Enables the internal pull-up for inputs.
            // Returns false when pin is not an input.
            inline static bool EnablePullup(Pins pin, bool enable = true)
            {
                uint8_t mask = PinToMask(pin);

                if ((PortRegDir() & mask) == Input)
                {
                    PortRegOut() |= mask;
                    return true;
                }

                return false;
            }

            inline static void SetDirection(Pins pin, PinIO io)
            {
                uint8_t mask = PinToMask(pin);

                if (io)
                    PortRegDir() |= mask;
                else
                    PortRegDir() &= ~mask;
            }

            inline static void SetDirection(PinIO io7, PinIO io6, PinIO io5, PinIO io4, PinIO io3, PinIO io2, PinIO io1, PinIO io0)
            {
                PortRegDir() = io7 << 7 | io6 << 6 | io5 << 5 | io4 << 4 | io3 << 3 | io2 << 2 | io1 << 1 | io0;
            }

            inline static void SetDirection(uint8_t allPinsIO)
            {
                PortRegDir() = allPinsIO;
            }

            inline static void WritePin(Pins pin, bool value)
            {
                uint8_t mask = PinToMask(pin);

                if (value)
                    PortRegOut() |= mask;
                else
                    PortRegOut() &= ~mask;
            }

            inline static void Write(uint8_t value)
            {
                PortRegOut() = value;
            }

            inline static bool ReadPin(Pins pin)
            {
                return (PortRegIn() & PinToMask(pin)) > 0;
            }

            inline static uint8_t Read()
            {
                return PortRegIn();
            }

            inline Ports getPort() const
            {
                return PortId;
            }

        private:
            inline static volatile uint8_t &PortRegIn()
            {
                return _SFR_IO8(((uint8_t)PortId * 3));
            }

            inline static volatile uint8_t &PortRegDir()
            {
                return _SFR_IO8((((uint8_t)PortId * 3) + 0x01));
            }

            inline static volatile uint8_t &PortRegOut()
            {
                return _SFR_IO8((((uint8_t)PortId * 3) + 0x02));
            }

            inline static uint8_t PinToMask(Pins pin)
            {
                return 1 << (uint8_t)pin;
            }
        };

        /*
         * Represents a virtual 8-bit port with custom pin types.
         * Pin types must support:
         * - ctor() without parameters
         * - bool EnableInternalPullup(bool) - Enables/disables internal pullup. Returns false if not an Input.
         * - void SetDirection(PinIO) - Sets pin direction to Input or Output.
         * - void Write(bool) - Writes value to pin.
         * - bool Read() - Reads pin value.
         */
        template <typename Pin7, typename Pin6, typename Pin5, typename Pin4, typename Pin3, typename Pin2, typename Pin1, typename Pin0>
        class VirtualPort
        {
        private:
            VirtualPort() {}

        public:
            // Enables the internal pull-up for inputs.
            // Returns false when pin is not an input.
            inline static bool EnablePullup(Pins pin, bool enable = true)
            {
                auto portPin = SelectPin(pin);
                return portPin.EnableInternalPullup(enable);
            }

            inline static void SetDirection(Pins pin, PinIO io)
            {
                auto portPin = SelectPin(pin);
                portPin.SetDirection(io);
            }

            inline static void SetDirection(PinIO io7, PinIO io6, PinIO io5, PinIO io4, PinIO io3, PinIO io2, PinIO io1, PinIO io0)
            {
                s_pin7.SetDirection(io7);
                s_pin6.SetDirection(io6);
                s_pin5.SetDirection(io5);
                s_pin4.SetDirection(io4);
                s_pin3.SetDirection(io3);
                s_pin2.SetDirection(io2);
                s_pin1.SetDirection(io1);
                s_pin0.SetDirection(io0);
            }

            inline static void SetDirection(uint8_t allPinsIO)
            {
                s_pin7.SetDirection(allPinsIO & 0x80 ? Output : Input);
                s_pin6.SetDirection(allPinsIO & 0x40 ? Output : Input);
                s_pin5.SetDirection(allPinsIO & 0x20 ? Output : Input);
                s_pin4.SetDirection(allPinsIO & 0x10 ? Output : Input);
                s_pin3.SetDirection(allPinsIO & 0x08 ? Output : Input);
                s_pin2.SetDirection(allPinsIO & 0x04 ? Output : Input);
                s_pin1.SetDirection(allPinsIO & 0x02 ? Output : Input);
                s_pin0.SetDirection(allPinsIO & 0x01 ? Output : Input);
            }

            inline static void WritePin(Pins pin, bool value)
            {
                auto portPin = SelectPin(pin);
                portPin.Write(value);
            }

            inline static void Write(uint8_t value)
            {
                s_pin7.Write(value & 0x80);
                s_pin6.Write(value & 0x40);
                s_pin5.Write(value & 0x20);
                s_pin4.Write(value & 0x10);
                s_pin3.Write(value & 0x08);
                s_pin2.Write(value & 0x04);
                s_pin1.Write(value & 0x02);
                s_pin0.Write(value & 0x01);
            }

            inline static bool ReadPin(Pins pin)
            {
                auto portPin = SelectPin(pin);
                return portPin.Read();
            }

            inline static uint8_t Read()
            {
                return s_pin7.Read() << 7 |
                       s_pin6.Read() << 6 |
                       s_pin5.Read() << 5 |
                       s_pin4.Read() << 4 |
                       s_pin3.Read() << 3 |
                       s_pin2.Read() << 2 |
                       s_pin1.Read() << 1 |
                       s_pin0.Read();
            }

        private:
            static auto SelectPin(Pins pin)
            {
                switch (pin)
                {
                case ATL::MCU::Pin0:
                    return s_pin0;
                case ATL::MCU::Pin1:
                    return s_pin1;
                case ATL::MCU::Pin2:
                    return s_pin2;
                case ATL::MCU::Pin3:
                    return s_pin3;
                case ATL::MCU::Pin4:
                    return s_pin4;
                case ATL::MCU::Pin5:
                    return s_pin5;
                case ATL::MCU::Pin6:
                    return s_pin6;
                case ATL::MCU::Pin7:
                    return s_pin7;
                }
                return nullptr;
            }

            static Pin0 s_pin0;
            static Pin1 s_pin1;
            static Pin2 s_pin2;
            static Pin3 s_pin3;
            static Pin4 s_pin4;
            static Pin5 s_pin5;
            static Pin6 s_pin6;
            static Pin7 s_pin7;
        };
    }
} // ATL::MCU

#endif /* __PORT_H__ */