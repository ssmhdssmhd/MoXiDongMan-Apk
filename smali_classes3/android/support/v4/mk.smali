.class public Landroid/support/v4/mk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final case:Ljava/lang/String; = "UTF-8"

.field public static final do:Ljava/lang/String; = "ISO-8859-1"

.field public static final for:Ljava/lang/String; = "UTF-16"

.field public static final if:Ljava/lang/String; = "US-ASCII"

.field public static final new:Ljava/lang/String; = "UTF-16BE"

.field public static final try:Ljava/lang/String; = "UTF-16LE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method
