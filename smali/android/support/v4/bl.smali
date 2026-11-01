.class public final Landroid/support/v4/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
    emulated = true
.end annotation


# static fields
.field public static final case:Ljava/nio/charset/Charset;
    .annotation build Landroid/support/v4/li0;
    .end annotation
.end field

.field public static final do:Ljava/nio/charset/Charset;
    .annotation build Landroid/support/v4/li0;
    .end annotation
.end field

.field public static final for:Ljava/nio/charset/Charset;

.field public static final if:Ljava/nio/charset/Charset;

.field public static final new:Ljava/nio/charset/Charset;
    .annotation build Landroid/support/v4/li0;
    .end annotation
.end field

.field public static final try:Ljava/nio/charset/Charset;
    .annotation build Landroid/support/v4/li0;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "US-ASCII"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/support/v4/bl;->do:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/support/v4/bl;->if:Ljava/nio/charset/Charset;

    const-string v0, "UTF-8"

    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/support/v4/bl;->for:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16BE"

    .line 4
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/support/v4/bl;->new:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16LE"

    .line 5
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/support/v4/bl;->try:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16"

    .line 6
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/support/v4/bl;->case:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
