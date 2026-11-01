.class Lkotlin/text/super;
.super Lkotlin/text/final;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0087\u0008\u00a8\u0006\u0003"
    }
    d2 = {
        "Ljava/util/regex/Pattern;",
        "Lkotlin/text/goto;",
        "native",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x5,
        0x1
    }
    xs = "kotlin/text/StringsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/text/final;-><init>()V

    return-void
.end method

.method private static final native(Ljava/util/regex/Pattern;)Lkotlin/text/goto;
    .locals 1
    .annotation build Landroid/support/v4/um0;
    .end annotation

    .line 1
    new-instance v0, Lkotlin/text/goto;

    invoke-direct {v0, p0}, Lkotlin/text/goto;-><init>(Ljava/util/regex/Pattern;)V

    return-object v0
.end method
