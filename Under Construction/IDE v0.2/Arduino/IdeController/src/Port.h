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
         *
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

            inline static void Write(Pins pin, bool value)
            {
                uint8_t mask = PinToMask(pin);

                if (value)
                    PortRegOut() |= mask;
                else
                    PortRegOut() &= ~mask;
            }

            inline static void WritePort(uint8_t value)
            {
                PortRegOut() = value;
            }

            inline static bool Read(Pins pin)
            {
                return (PortRegIn() & PinToMask(pin)) > 0;
            }

            inline static uint8_t ReadPort()
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

    }
} // ATL::MCU

#endif /* __PORT_H__ */