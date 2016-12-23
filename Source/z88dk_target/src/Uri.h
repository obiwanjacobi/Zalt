#ifndef __URI_H__
#define __URI_H__

#define	UriTerminal	"terminal"
#define	UriFile	"file"

typedef struct
{
	const char* Raw;	
} Uri;

Uri* Uri_Construct(const char* uri);




#endif	//__URI_H__