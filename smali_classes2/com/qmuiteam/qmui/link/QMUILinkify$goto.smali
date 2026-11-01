.class Lcom/qmuiteam/qmui/link/QMUILinkify$goto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/link/QMUILinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "goto"
.end annotation


# static fields
.field private static final case:Ljava/lang/String; = "\\:\\d{1,5}"

.field private static final do:[Ljava/lang/String;

.field private static final else:Ljava/lang/String; = "[/\\?](?:(?:[a-zA-Z0-9[\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\ud800\udc00-\ud83f\udffd\ud840\udc00-\ud87f\udffd\ud880\udc00-\ud8bf\udffd\ud8c0\udc00-\ud8ff\udffd\ud900\udc00-\ud93f\udffd\ud940\udc00-\ud97f\udffd\ud980\udc00-\ud9bf\udffd\ud9c0\udc00-\ud9ff\udffd\uda00\udc00-\uda3f\udffd\uda40\udc00-\uda7f\udffd\uda80\udc00-\udabf\udffd\udac0\udc00-\udaff\udffd\udb00\udc00-\udb3f\udffd\udb44\udc00-\udb7f\udffd&&[^\u00a0[\u2000-\u200a]\u2028\u2029\u202f\u3000]];/\\?:@&=#~\\-\\.\\+!\\*\'\\(\\),_\\$])|(?:%[a-fA-F0-9]{2}))*"

.field private static final for:Ljava/lang/String; = "((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))"

.field private static goto:Ljava/util/regex/Pattern; = null

.field private static final if:Ljava/lang/String; = "(?i:http|https|rtsp)://"

.field private static final new:Ljava/lang/String; = "[\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\ud800\udc00-\ud83f\udffd\ud840\udc00-\ud87f\udffd\ud880\udc00-\ud8bf\udffd\ud8c0\udc00-\ud8ff\udffd\ud900\udc00-\ud93f\udffd\ud940\udc00-\ud97f\udffd\ud980\udc00-\ud9bf\udffd\ud9c0\udc00-\ud9ff\udffd\uda00\udc00-\uda3f\udffd\uda40\udc00-\uda7f\udffd\uda80\udc00-\udabf\udffd\udac0\udc00-\udaff\udffd\udb00\udc00-\udb3f\udffd\udb44\udc00-\udb7f\udffd&&[^\u00a0[\u2000-\u200a]\u2028\u2029\u202f\u3000]]"

.field private static final try:Ljava/lang/String; = "a-zA-Z0-9[\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\ud800\udc00-\ud83f\udffd\ud840\udc00-\ud87f\udffd\ud880\udc00-\ud8bf\udffd\ud8c0\udc00-\ud8ff\udffd\ud900\udc00-\ud93f\udffd\ud940\udc00-\ud97f\udffd\ud980\udc00-\ud9bf\udffd\ud9c0\udc00-\ud9ff\udffd\uda00\udc00-\uda3f\udffd\uda40\udc00-\uda7f\udffd\uda80\udc00-\udabf\udffd\udac0\udc00-\udaff\udffd\udb00\udc00-\udb3f\udffd\udb44\udc00-\udb7f\udffd&&[^\u00a0[\u2000-\u200a]\u2028\u2029\u202f\u3000]]"


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "top"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v3, "net"

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string v3, "org"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "edu"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "gov"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "int"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "mil"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "tel"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "biz"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "cc"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v4, "tv"

    aput-object v4, v0, v1

    const/16 v1, 0xc

    const-string v5, "info"

    aput-object v5, v0, v1

    const/16 v1, 0xd

    const-string v5, "zw"

    aput-object v5, v0, v1

    const/16 v1, 0xe

    const-string v5, "name"

    aput-object v5, v0, v1

    const/16 v1, 0xf

    const-string v5, "hk"

    aput-object v5, v0, v1

    const/16 v1, 0x10

    const-string v6, "mobi"

    aput-object v6, v0, v1

    const/16 v1, 0x11

    const-string v6, "asia"

    aput-object v6, v0, v1

    const/16 v1, 0x12

    const-string v6, "cd"

    aput-object v6, v0, v1

    const/16 v1, 0x13

    const-string v6, "travel"

    aput-object v6, v0, v1

    const/16 v1, 0x14

    const-string v6, "pro"

    aput-object v6, v0, v1

    const/16 v1, 0x15

    const-string v6, "museum"

    aput-object v6, v0, v1

    const/16 v1, 0x16

    const-string v6, "coop"

    aput-object v6, v0, v1

    const/16 v1, 0x17

    const-string v6, "aero"

    aput-object v6, v0, v1

    const/16 v1, 0x18

    const-string v6, "ad"

    aput-object v6, v0, v1

    const/16 v1, 0x19

    const-string v6, "ae"

    aput-object v6, v0, v1

    const/16 v1, 0x1a

    const-string v6, "af"

    aput-object v6, v0, v1

    const/16 v1, 0x1b

    const-string v6, "ag"

    aput-object v6, v0, v1

    const/16 v1, 0x1c

    const-string v6, "ai"

    aput-object v6, v0, v1

    const/16 v1, 0x1d

    const-string v6, "al"

    aput-object v6, v0, v1

    const/16 v1, 0x1e

    const-string v6, "am"

    aput-object v6, v0, v1

    const/16 v1, 0x1f

    const-string v6, "an"

    aput-object v6, v0, v1

    const/16 v1, 0x20

    const-string v6, "ao"

    aput-object v6, v0, v1

    const/16 v1, 0x21

    const-string v6, "aq"

    aput-object v6, v0, v1

    const/16 v1, 0x22

    const-string v6, "ar"

    aput-object v6, v0, v1

    const/16 v1, 0x23

    const-string v6, "as"

    aput-object v6, v0, v1

    const/16 v1, 0x24

    const-string v6, "at"

    aput-object v6, v0, v1

    const/16 v1, 0x25

    const-string v6, "au"

    aput-object v6, v0, v1

    const/16 v1, 0x26

    const-string v6, "aw"

    aput-object v6, v0, v1

    const/16 v1, 0x27

    const-string v6, "az"

    aput-object v6, v0, v1

    const/16 v1, 0x28

    const-string v6, "ba"

    aput-object v6, v0, v1

    const/16 v1, 0x29

    const-string v6, "bb"

    aput-object v6, v0, v1

    const/16 v1, 0x2a

    const-string v6, "bd"

    aput-object v6, v0, v1

    const/16 v1, 0x2b

    const-string v6, "be"

    aput-object v6, v0, v1

    const/16 v1, 0x2c

    const-string v6, "bf"

    aput-object v6, v0, v1

    const/16 v1, 0x2d

    const-string v6, "bg"

    aput-object v6, v0, v1

    const/16 v1, 0x2e

    const-string v6, "bh"

    aput-object v6, v0, v1

    const/16 v1, 0x2f

    const-string v6, "bi"

    aput-object v6, v0, v1

    const/16 v1, 0x30

    const-string v6, "bj"

    aput-object v6, v0, v1

    const/16 v1, 0x31

    const-string v6, "bm"

    aput-object v6, v0, v1

    const/16 v1, 0x32

    const-string v6, "bn"

    aput-object v6, v0, v1

    const/16 v1, 0x33

    const-string v6, "bo"

    aput-object v6, v0, v1

    const/16 v1, 0x34

    const-string v6, "br"

    aput-object v6, v0, v1

    const/16 v1, 0x35

    const-string v6, "bs"

    aput-object v6, v0, v1

    const/16 v1, 0x36

    const-string v6, "bt"

    aput-object v6, v0, v1

    const/16 v1, 0x37

    const-string v6, "bv"

    aput-object v6, v0, v1

    const/16 v1, 0x38

    const-string v6, "bw"

    aput-object v6, v0, v1

    const/16 v1, 0x39

    const-string v6, "by"

    aput-object v6, v0, v1

    const/16 v1, 0x3a

    const-string v6, "bz"

    aput-object v6, v0, v1

    const/16 v1, 0x3b

    const-string v6, "ca"

    aput-object v6, v0, v1

    const/16 v1, 0x3c

    aput-object v3, v0, v1

    const/16 v1, 0x3d

    const-string v3, "cf"

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    const-string v3, "cg"

    aput-object v3, v0, v1

    const/16 v1, 0x3f

    const-string v3, "ch"

    aput-object v3, v0, v1

    const/16 v1, 0x40

    const-string v3, "ci"

    aput-object v3, v0, v1

    const/16 v1, 0x41

    const-string v3, "ck"

    aput-object v3, v0, v1

    const/16 v1, 0x42

    const-string v3, "cl"

    aput-object v3, v0, v1

    const/16 v1, 0x43

    const-string v3, "cm"

    aput-object v3, v0, v1

    const/16 v1, 0x44

    const-string v3, "cn"

    aput-object v3, v0, v1

    const/16 v1, 0x45

    const-string v3, "co"

    aput-object v3, v0, v1

    const/16 v1, 0x46

    const-string v3, "cq"

    aput-object v3, v0, v1

    const/16 v1, 0x47

    const-string v3, "cr"

    aput-object v3, v0, v1

    const/16 v1, 0x48

    const-string v3, "cu"

    aput-object v3, v0, v1

    const/16 v1, 0x49

    const-string v3, "cv"

    aput-object v3, v0, v1

    const/16 v1, 0x4a

    const-string v3, "cx"

    aput-object v3, v0, v1

    const/16 v1, 0x4b

    const-string v3, "cy"

    aput-object v3, v0, v1

    const/16 v1, 0x4c

    const-string v3, "cz"

    aput-object v3, v0, v1

    const/16 v1, 0x4d

    const-string v3, "de"

    aput-object v3, v0, v1

    const/16 v1, 0x4e

    const-string v3, "dj"

    aput-object v3, v0, v1

    const/16 v1, 0x4f

    const-string v3, "dk"

    aput-object v3, v0, v1

    const/16 v1, 0x50

    const-string v3, "dm"

    aput-object v3, v0, v1

    const/16 v1, 0x51

    const-string v3, "do"

    aput-object v3, v0, v1

    const/16 v1, 0x52

    const-string v3, "dz"

    aput-object v3, v0, v1

    const/16 v1, 0x53

    const-string v3, "ec"

    aput-object v3, v0, v1

    const/16 v1, 0x54

    const-string v3, "ee"

    aput-object v3, v0, v1

    const/16 v1, 0x55

    const-string v3, "eg"

    aput-object v3, v0, v1

    const/16 v1, 0x56

    const-string v3, "eh"

    aput-object v3, v0, v1

    const/16 v1, 0x57

    const-string v3, "es"

    aput-object v3, v0, v1

    const/16 v1, 0x58

    const-string v3, "et"

    aput-object v3, v0, v1

    const/16 v1, 0x59

    const-string v3, "ev"

    aput-object v3, v0, v1

    const/16 v1, 0x5a

    const-string v3, "fi"

    aput-object v3, v0, v1

    const/16 v1, 0x5b

    const-string v3, "fj"

    aput-object v3, v0, v1

    const/16 v1, 0x5c

    const-string v3, "fk"

    aput-object v3, v0, v1

    const/16 v1, 0x5d

    const-string v3, "fm"

    aput-object v3, v0, v1

    const/16 v1, 0x5e

    const-string v3, "fo"

    aput-object v3, v0, v1

    const/16 v1, 0x5f

    const-string v3, "fr"

    aput-object v3, v0, v1

    const/16 v1, 0x60

    const-string v3, "ga"

    aput-object v3, v0, v1

    const/16 v1, 0x61

    const-string v3, "gb"

    aput-object v3, v0, v1

    const/16 v1, 0x62

    const-string v3, "gd"

    aput-object v3, v0, v1

    const/16 v1, 0x63

    const-string v3, "ge"

    aput-object v3, v0, v1

    const/16 v1, 0x64

    const-string v3, "gf"

    aput-object v3, v0, v1

    const/16 v1, 0x65

    const-string v3, "gh"

    aput-object v3, v0, v1

    const/16 v1, 0x66

    const-string v3, "gi"

    aput-object v3, v0, v1

    const/16 v1, 0x67

    const-string v3, "gl"

    aput-object v3, v0, v1

    const/16 v1, 0x68

    const-string v3, "gm"

    aput-object v3, v0, v1

    const/16 v1, 0x69

    const-string v3, "gn"

    aput-object v3, v0, v1

    const/16 v1, 0x6a

    const-string v3, "gp"

    aput-object v3, v0, v1

    const/16 v1, 0x6b

    const-string v3, "gr"

    aput-object v3, v0, v1

    const/16 v1, 0x6c

    const-string v3, "gt"

    aput-object v3, v0, v1

    const/16 v1, 0x6d

    const-string v3, "gu"

    aput-object v3, v0, v1

    const/16 v1, 0x6e

    const-string v3, "gw"

    aput-object v3, v0, v1

    const/16 v1, 0x6f

    const-string v3, "gy"

    aput-object v3, v0, v1

    const/16 v1, 0x70

    aput-object v5, v0, v1

    const/16 v1, 0x71

    const-string v3, "hm"

    aput-object v3, v0, v1

    const/16 v1, 0x72

    const-string v3, "hn"

    aput-object v3, v0, v1

    const/16 v1, 0x73

    const-string v3, "hr"

    aput-object v3, v0, v1

    const/16 v1, 0x74

    const-string v3, "ht"

    aput-object v3, v0, v1

    const/16 v1, 0x75

    const-string v3, "hu"

    aput-object v3, v0, v1

    const/16 v1, 0x76

    const-string v3, "id"

    aput-object v3, v0, v1

    const/16 v1, 0x77

    const-string v3, "ie"

    aput-object v3, v0, v1

    const/16 v1, 0x78

    const-string v3, "il"

    aput-object v3, v0, v1

    const/16 v1, 0x79

    const-string v3, "in"

    aput-object v3, v0, v1

    const/16 v1, 0x7a

    const-string v3, "io"

    aput-object v3, v0, v1

    const/16 v1, 0x7b

    const-string v3, "iq"

    aput-object v3, v0, v1

    const/16 v1, 0x7c

    const-string v3, "ir"

    aput-object v3, v0, v1

    const/16 v1, 0x7d

    const-string v3, "is"

    aput-object v3, v0, v1

    const/16 v1, 0x7e

    const-string v3, "it"

    aput-object v3, v0, v1

    const/16 v1, 0x7f

    const-string v3, "jm"

    aput-object v3, v0, v1

    const/16 v1, 0x80

    const-string v3, "jo"

    aput-object v3, v0, v1

    const/16 v1, 0x81

    const-string v3, "jp"

    aput-object v3, v0, v1

    const/16 v1, 0x82

    const-string v3, "ke"

    aput-object v3, v0, v1

    const/16 v1, 0x83

    const-string v3, "kg"

    aput-object v3, v0, v1

    const/16 v1, 0x84

    const-string v3, "kh"

    aput-object v3, v0, v1

    const/16 v1, 0x85

    const-string v3, "ki"

    aput-object v3, v0, v1

    const/16 v1, 0x86

    const-string v3, "km"

    aput-object v3, v0, v1

    const/16 v1, 0x87

    const-string v3, "kn"

    aput-object v3, v0, v1

    const/16 v1, 0x88

    const-string v3, "kp"

    aput-object v3, v0, v1

    const/16 v1, 0x89

    const-string v3, "kr"

    aput-object v3, v0, v1

    const/16 v1, 0x8a

    const-string v3, "kw"

    aput-object v3, v0, v1

    const/16 v1, 0x8b

    const-string v3, "ky"

    aput-object v3, v0, v1

    const/16 v1, 0x8c

    const-string v3, "kz"

    aput-object v3, v0, v1

    const/16 v1, 0x8d

    const-string v3, "la"

    aput-object v3, v0, v1

    const/16 v1, 0x8e

    const-string v3, "lb"

    aput-object v3, v0, v1

    const/16 v1, 0x8f

    const-string v3, "lc"

    aput-object v3, v0, v1

    const/16 v1, 0x90

    const-string v3, "li"

    aput-object v3, v0, v1

    const/16 v1, 0x91

    const-string v3, "lk"

    aput-object v3, v0, v1

    const/16 v1, 0x92

    const-string v3, "lr"

    aput-object v3, v0, v1

    const/16 v1, 0x93

    const-string v3, "ls"

    aput-object v3, v0, v1

    const/16 v1, 0x94

    const-string v3, "lt"

    aput-object v3, v0, v1

    const/16 v1, 0x95

    const-string v3, "lu"

    aput-object v3, v0, v1

    const/16 v1, 0x96

    const-string v3, "lv"

    aput-object v3, v0, v1

    const/16 v1, 0x97

    const-string v3, "ly"

    aput-object v3, v0, v1

    const/16 v1, 0x98

    const-string v3, "ma"

    aput-object v3, v0, v1

    const/16 v1, 0x99

    const-string v3, "mc"

    aput-object v3, v0, v1

    const/16 v1, 0x9a

    const-string v3, "md"

    aput-object v3, v0, v1

    const/16 v1, 0x9b

    const-string v3, "mg"

    aput-object v3, v0, v1

    const/16 v1, 0x9c

    const-string v3, "mh"

    aput-object v3, v0, v1

    const/16 v1, 0x9d

    const-string v3, "ml"

    aput-object v3, v0, v1

    const/16 v1, 0x9e

    const-string v3, "mm"

    aput-object v3, v0, v1

    const/16 v1, 0x9f

    const-string v3, "mn"

    aput-object v3, v0, v1

    const/16 v1, 0xa0

    const-string v3, "mo"

    aput-object v3, v0, v1

    const/16 v1, 0xa1

    const-string v3, "mp"

    aput-object v3, v0, v1

    const/16 v1, 0xa2

    const-string v3, "mq"

    aput-object v3, v0, v1

    const/16 v1, 0xa3

    const-string v3, "mr"

    aput-object v3, v0, v1

    const/16 v1, 0xa4

    const-string v3, "ms"

    aput-object v3, v0, v1

    const/16 v1, 0xa5

    const-string v3, "mt"

    aput-object v3, v0, v1

    const/16 v1, 0xa6

    const-string v3, "mv"

    aput-object v3, v0, v1

    const/16 v1, 0xa7

    const-string v3, "mw"

    aput-object v3, v0, v1

    const/16 v1, 0xa8

    const-string v3, "mx"

    aput-object v3, v0, v1

    const/16 v1, 0xa9

    const-string v3, "my"

    aput-object v3, v0, v1

    const/16 v1, 0xaa

    const-string v3, "mz"

    aput-object v3, v0, v1

    const/16 v1, 0xab

    const-string v3, "na"

    aput-object v3, v0, v1

    const/16 v1, 0xac

    const-string v3, "nc"

    aput-object v3, v0, v1

    const/16 v1, 0xad

    const-string v3, "ne"

    aput-object v3, v0, v1

    const/16 v1, 0xae

    const-string v3, "nf"

    aput-object v3, v0, v1

    const/16 v1, 0xaf

    const-string v3, "ng"

    aput-object v3, v0, v1

    const/16 v1, 0xb0

    const-string v3, "ni"

    aput-object v3, v0, v1

    const/16 v1, 0xb1

    const-string v3, "nl"

    aput-object v3, v0, v1

    const/16 v1, 0xb2

    const-string v3, "no"

    aput-object v3, v0, v1

    const/16 v1, 0xb3

    const-string v3, "np"

    aput-object v3, v0, v1

    const/16 v1, 0xb4

    const-string v3, "nr"

    aput-object v3, v0, v1

    const/16 v1, 0xb5

    const-string v3, "nt"

    aput-object v3, v0, v1

    const/16 v1, 0xb6

    const-string v3, "nu"

    aput-object v3, v0, v1

    const/16 v1, 0xb7

    const-string v3, "nz"

    aput-object v3, v0, v1

    const/16 v1, 0xb8

    const-string v3, "om"

    aput-object v3, v0, v1

    const/16 v1, 0xb9

    const-string v3, "qa"

    aput-object v3, v0, v1

    const/16 v1, 0xba

    const-string v3, "pa"

    aput-object v3, v0, v1

    const/16 v1, 0xbb

    const-string v3, "pe"

    aput-object v3, v0, v1

    const/16 v1, 0xbc

    const-string v3, "pf"

    aput-object v3, v0, v1

    const/16 v1, 0xbd

    const-string v3, "pg"

    aput-object v3, v0, v1

    const/16 v1, 0xbe

    const-string v3, "ph"

    aput-object v3, v0, v1

    const/16 v1, 0xbf

    const-string v3, "pk"

    aput-object v3, v0, v1

    const/16 v1, 0xc0

    const-string v3, "pl"

    aput-object v3, v0, v1

    const/16 v1, 0xc1

    const-string v3, "pm"

    aput-object v3, v0, v1

    const/16 v1, 0xc2

    const-string v3, "pn"

    aput-object v3, v0, v1

    const/16 v1, 0xc3

    const-string v3, "pr"

    aput-object v3, v0, v1

    const/16 v1, 0xc4

    const-string v3, "pt"

    aput-object v3, v0, v1

    const/16 v1, 0xc5

    const-string v3, "pw"

    aput-object v3, v0, v1

    const/16 v1, 0xc6

    const-string v3, "py"

    aput-object v3, v0, v1

    const/16 v1, 0xc7

    const-string v3, "re"

    aput-object v3, v0, v1

    const/16 v1, 0xc8

    const-string v3, "ro"

    aput-object v3, v0, v1

    const/16 v1, 0xc9

    const-string v3, "ru"

    aput-object v3, v0, v1

    const/16 v1, 0xca

    const-string v3, "rw"

    aput-object v3, v0, v1

    const/16 v1, 0xcb

    const-string v3, "sa"

    aput-object v3, v0, v1

    const/16 v1, 0xcc

    const-string v3, "sb"

    aput-object v3, v0, v1

    const/16 v1, 0xcd

    const-string v3, "sc"

    aput-object v3, v0, v1

    const/16 v1, 0xce

    const-string v3, "sd"

    aput-object v3, v0, v1

    const/16 v1, 0xcf

    const-string v3, "se"

    aput-object v3, v0, v1

    const/16 v1, 0xd0

    const-string v3, "sg"

    aput-object v3, v0, v1

    const/16 v1, 0xd1

    const-string v3, "sh"

    aput-object v3, v0, v1

    const/16 v1, 0xd2

    const-string v3, "si"

    aput-object v3, v0, v1

    const/16 v1, 0xd3

    const-string v3, "sj"

    aput-object v3, v0, v1

    const/16 v1, 0xd4

    const-string v3, "sk"

    aput-object v3, v0, v1

    const/16 v1, 0xd5

    const-string v3, "sl"

    aput-object v3, v0, v1

    const/16 v1, 0xd6

    const-string v3, "sm"

    aput-object v3, v0, v1

    const/16 v1, 0xd7

    const-string v3, "sn"

    aput-object v3, v0, v1

    const/16 v1, 0xd8

    const-string v3, "so"

    aput-object v3, v0, v1

    const/16 v1, 0xd9

    const-string v3, "sr"

    aput-object v3, v0, v1

    const/16 v1, 0xda

    const-string v3, "st"

    aput-object v3, v0, v1

    const/16 v1, 0xdb

    const-string v3, "su"

    aput-object v3, v0, v1

    const/16 v1, 0xdc

    const-string v3, "sy"

    aput-object v3, v0, v1

    const/16 v1, 0xdd

    const-string v3, "sz"

    aput-object v3, v0, v1

    const/16 v1, 0xde

    const-string v3, "tc"

    aput-object v3, v0, v1

    const/16 v1, 0xdf

    const-string v3, "td"

    aput-object v3, v0, v1

    const/16 v1, 0xe0

    const-string v3, "tf"

    aput-object v3, v0, v1

    const/16 v1, 0xe1

    const-string v3, "tg"

    aput-object v3, v0, v1

    const/16 v1, 0xe2

    const-string v3, "th"

    aput-object v3, v0, v1

    const/16 v1, 0xe3

    const-string v3, "tj"

    aput-object v3, v0, v1

    const/16 v1, 0xe4

    const-string v3, "tk"

    aput-object v3, v0, v1

    const/16 v1, 0xe5

    const-string v3, "tm"

    aput-object v3, v0, v1

    const/16 v1, 0xe6

    const-string v3, "tn"

    aput-object v3, v0, v1

    const/16 v1, 0xe7

    const-string v3, "to"

    aput-object v3, v0, v1

    const/16 v1, 0xe8

    const-string v3, "tp"

    aput-object v3, v0, v1

    const/16 v1, 0xe9

    const-string v3, "tr"

    aput-object v3, v0, v1

    const/16 v1, 0xea

    const-string v3, "tt"

    aput-object v3, v0, v1

    const/16 v1, 0xeb

    aput-object v4, v0, v1

    const/16 v1, 0xec

    const-string v3, "tw"

    aput-object v3, v0, v1

    const/16 v1, 0xed

    const-string v3, "tz"

    aput-object v3, v0, v1

    const/16 v1, 0xee

    const-string v3, "ua"

    aput-object v3, v0, v1

    const/16 v1, 0xef

    const-string v3, "ug"

    aput-object v3, v0, v1

    const/16 v1, 0xf0

    const-string v3, "uk"

    aput-object v3, v0, v1

    const/16 v1, 0xf1

    const-string v3, "us"

    aput-object v3, v0, v1

    const/16 v1, 0xf2

    const-string v3, "uy"

    aput-object v3, v0, v1

    const/16 v1, 0xf3

    const-string v3, "va"

    aput-object v3, v0, v1

    const/16 v1, 0xf4

    const-string v3, "vc"

    aput-object v3, v0, v1

    const/16 v1, 0xf5

    const-string v3, "ve"

    aput-object v3, v0, v1

    const/16 v1, 0xf6

    const-string v3, "vg"

    aput-object v3, v0, v1

    const/16 v1, 0xf7

    const-string v3, "vn"

    aput-object v3, v0, v1

    const/16 v1, 0xf8

    const-string v3, "vu"

    aput-object v3, v0, v1

    const/16 v1, 0xf9

    const-string v3, "wf"

    aput-object v3, v0, v1

    const/16 v1, 0xfa

    const-string v3, "ws"

    aput-object v3, v0, v1

    const/16 v1, 0xfb

    const-string v3, "ye"

    aput-object v3, v0, v1

    const/16 v1, 0xfc

    const-string v3, "yu"

    aput-object v3, v0, v1

    const/16 v1, 0xfd

    const-string v3, "za"

    aput-object v3, v0, v1

    const/16 v1, 0xfe

    const-string v3, "zm"

    aput-object v3, v0, v1

    const/16 v1, 0xff

    const-string v3, "zr"

    aput-object v3, v0, v1

    .line 1
    sput-object v0, Lcom/qmuiteam/qmui/link/QMUILinkify$goto;->do:[Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :goto_0
    sget-object v1, Lcom/qmuiteam/qmui/link/QMUILinkify$goto;->do:[Ljava/lang/String;

    array-length v3, v1

    if-ge v2, v3, :cond_1

    if-eqz v2, :cond_0

    const-string v3, "|"

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ")"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "((?:(www\\.|[a-zA-Z\\.\\-]+\\.)?[a-zA-Z0-9\\-]+)\\."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(((?i:http|https|rtsp)://)?(((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\:\\d{1,5}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")?("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[/\\?](?:(?:[a-zA-Z0-9[\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef\ud800\udc00-\ud83f\udffd\ud840\udc00-\ud87f\udffd\ud880\udc00-\ud8bf\udffd\ud8c0\udc00-\ud8ff\udffd\ud900\udc00-\ud93f\udffd\ud940\udc00-\ud97f\udffd\ud980\udc00-\ud9bf\udffd\ud9c0\udc00-\ud9ff\udffd\uda00\udc00-\uda3f\udffd\uda40\udc00-\uda7f\udffd\uda80\udc00-\udabf\udffd\udac0\udc00-\udaff\udffd\udb00\udc00-\udb3f\udffd\udb44\udc00-\udb7f\udffd&&[^\u00a0[\u2000-\u200a]\u2028\u2029\u202f\u3000]];/\\?:@&=#~\\-\\.\\+!\\*\'\\(\\),_\\$])|(?:%[a-fA-F0-9]{2}))*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")?)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/qmuiteam/qmui/link/QMUILinkify$goto;->goto:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/link/QMUILinkify$goto;->goto:Ljava/util/regex/Pattern;

    return-object v0
.end method
