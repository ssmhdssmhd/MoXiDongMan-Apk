.class public Lfi/iki/elonen/do$try$if;
.super Lfi/iki/elonen/do$try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/do$try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field public static final synthetic break:Z


# instance fields
.field private goto:Lfi/iki/elonen/do$try$do;

.field private this:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lfi/iki/elonen/do$try$do;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 2
    sget-object v0, Lfi/iki/elonen/do$try$for;->Close:Lfi/iki/elonen/do$try$for;

    invoke-static {p1, p2}, Lfi/iki/elonen/do$try$if;->static(Lfi/iki/elonen/do$try$do;Ljava/lang/String;)[B

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, v0, p2, p1}, Lfi/iki/elonen/do$try;-><init>(Lfi/iki/elonen/do$try$for;Z[B)V

    return-void
.end method

.method private constructor <init>(Lfi/iki/elonen/do$try;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lfi/iki/elonen/do$try;-><init>(Lfi/iki/elonen/do$try;)V

    .line 4
    invoke-virtual {p1}, Lfi/iki/elonen/do$try;->new()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lfi/iki/elonen/do$try;->new()[B

    move-result-object v0

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lfi/iki/elonen/do$try;->new()[B

    move-result-object p1

    const/4 v2, 0x1

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    invoke-static {p1}, Lfi/iki/elonen/do$try$do;->find(I)Lfi/iki/elonen/do$try$do;

    move-result-object p1

    iput-object p1, p0, Lfi/iki/elonen/do$try$if;->goto:Lfi/iki/elonen/do$try$do;

    .line 6
    invoke-virtual {p0}, Lfi/iki/elonen/do$try;->new()[B

    move-result-object p1

    invoke-virtual {p0}, Lfi/iki/elonen/do$try;->new()[B

    move-result-object v0

    array-length v0, v0

    sub-int/2addr v0, v1

    invoke-static {p1, v1, v0}, Lfi/iki/elonen/do$try;->if([BII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfi/iki/elonen/do$try$if;->this:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lfi/iki/elonen/do$try;Lfi/iki/elonen/do$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lfi/iki/elonen/do$try$if;-><init>(Lfi/iki/elonen/do$try;)V

    return-void
.end method

.method private static static(Lfi/iki/elonen/do$try$do;Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p1}, Lfi/iki/elonen/do$try;->public(Ljava/lang/String;)[B

    move-result-object p1

    .line 2
    array-length v1, p1

    const/4 v2, 0x2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 3
    invoke-virtual {p0}, Lfi/iki/elonen/do$try$do;->getValue()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {p0}, Lfi/iki/elonen/do$try$do;->getValue()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    .line 5
    array-length p0, p1

    invoke-static {p1, v0, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    new-array p0, v0, [B

    return-object p0
.end method


# virtual methods
.method public switch()Lfi/iki/elonen/do$try$do;
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/do$try$if;->goto:Lfi/iki/elonen/do$try$do;

    return-object v0
.end method

.method public throws()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/do$try$if;->this:Ljava/lang/String;

    return-object v0
.end method
