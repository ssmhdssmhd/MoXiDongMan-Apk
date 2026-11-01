.class public Lorg/bouncycastle/asn1/else;
.super Ljava/io/FilterInputStream;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/BERTags;


# instance fields
.field private final do:I

.field private final for:[[B

.field private final if:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/m0;->for(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/else;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/else;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput p2, p0, Lorg/bouncycastle/asn1/else;->do:I

    iput-boolean p3, p0, Lorg/bouncycastle/asn1/else;->if:Z

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lorg/bouncycastle/asn1/else;->for:[[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/m0;->for(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/else;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/else;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/else;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method private static case(Lorg/bouncycastle/asn1/h0;[[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/h0;->do()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/h0;->do()I

    move-result v1

    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    new-array v1, v0, [B

    aput-object v1, p1, v0

    :cond_0
    invoke-static {p0, v1}, Landroid/support/v4/a22;->case(Ljava/io/InputStream;[B)I

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/h0;->for()[B

    move-result-object p0

    return-object p0
.end method

.method public static catch(Ljava/io/InputStream;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1f

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    if-eqz v1, :cond_2

    :goto_0
    if-ltz v0, :cond_0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, 0x7f

    or-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x7

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    and-int/lit8 p0, v0, 0x7f

    or-int/2addr p1, p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found inside tag value."

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - invalid high tag number found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return p1
.end method

.method public static new(ILorg/bouncycastle/asn1/h0;[[B)Lorg/bouncycastle/asn1/final;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown tag "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " encountered"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p0, Lorg/bouncycastle/asn1/w;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/h0;->for()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/w;-><init>([B)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/bouncycastle/asn1/c;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/h0;->for()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/c;-><init>([B)V

    return-object p0

    :pswitch_2
    new-instance p0, Lorg/bouncycastle/asn1/y;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/h0;->for()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/y;-><init>([B)V

    return-object p0

    :pswitch_3
    new-instance p0, Lorg/bouncycastle/asn1/f;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/h0;->for()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/f;-><init>([B)V

    return-object p0

    :pswitch_4
    new-instance p0, Lorg/bouncycastle/asn1/case;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/h0;->for()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/case;-><init>([B)V

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/bouncycastle/asn1/native;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/h0;->for()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/native;-><init>([B)V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/bouncycastle/asn1/g;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/h0;->for()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/g;-><init>([B)V

    return-object p0

    :pswitch_7
    new-instance p0, Lorg/bouncycastle/asn1/x;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/h0;->for()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/x;-><init>([B)V

    return-object p0

    :pswitch_8
    new-instance p0, Lorg/bouncycastle/asn1/s;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/h0;->for()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/s;-><init>([B)V

    return-object p0

    :pswitch_9
    new-instance p0, Lorg/bouncycastle/asn1/m;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/h0;->for()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/m;-><init>([B)V

    return-object p0

    :pswitch_a
    new-instance p0, Lorg/bouncycastle/asn1/i;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/h0;->for()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/i;-><init>([B)V

    return-object p0

    :pswitch_b
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/else;->case(Lorg/bouncycastle/asn1/h0;[[B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/catch;->const([B)Lorg/bouncycastle/asn1/catch;

    move-result-object p0

    return-object p0

    :pswitch_c
    sget-object p0, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    return-object p0

    :pswitch_d
    new-instance p0, Lorg/bouncycastle/asn1/j;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/h0;->for()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    return-object p0

    :pswitch_e
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/h0;->do()I

    move-result p0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/if;->class(ILjava/io/InputStream;)Lorg/bouncycastle/asn1/if;

    move-result-object p0

    return-object p0

    :pswitch_f
    new-instance p0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/h0;->for()[B

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/goto;-><init>([BZ)V

    return-object p0

    :pswitch_10
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/else;->case(Lorg/bouncycastle/asn1/h0;[[B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/for;->catch([B)Lorg/bouncycastle/asn1/for;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/implements;

    invoke-static {p1}, Lorg/bouncycastle/asn1/else;->try(Lorg/bouncycastle/asn1/h0;)[C

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/implements;-><init>([C)V

    return-object p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/v;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/h0;->for()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/v;-><init>([B)V

    return-object p0

    :cond_2
    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/else;->case(Lorg/bouncycastle/asn1/h0;[[B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/new;->catch([B)Lorg/bouncycastle/asn1/new;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static this(Ljava/io/InputStream;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_7

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 v1, 0x7f

    if-le v0, v1, :cond_6

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x4

    if-gt v0, v1, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found reading length"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-ltz v1, :cond_4

    if-ge v1, p1, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - out of bounds length found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "corrupted stream - negative length found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DER length more than 4 bytes: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return v0

    :cond_7
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "EOF found when length expected"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static try(Lorg/bouncycastle/asn1/h0;)[C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/h0;->do()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/h0;->read()I

    move-result v3

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/h0;->read()I

    move-result v4

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v2, 0x1

    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v2

    move v2, v5

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method


# virtual methods
.method public break()Lorg/bouncycastle/asn1/final;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    if-gtz v0, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected end-of-contents marker"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/else;->catch(Ljava/io/InputStream;I)I

    move-result v1

    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/else;->goto()I

    move-result v4

    if-gez v4, :cond_a

    if-eqz v2, :cond_9

    new-instance v2, Lorg/bouncycastle/asn1/i0;

    iget v4, p0, Lorg/bouncycastle/asn1/else;->do:I

    invoke-direct {v2, p0, v4}, Lorg/bouncycastle/asn1/i0;-><init>(Ljava/io/InputStream;I)V

    new-instance v4, Lorg/bouncycastle/asn1/while;

    iget v5, p0, Lorg/bouncycastle/asn1/else;->do:I

    invoke-direct {v4, v2, v5}, Lorg/bouncycastle/asn1/while;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_3

    new-instance v0, Lorg/bouncycastle/asn1/return;

    invoke-direct {v0, v1, v4}, Lorg/bouncycastle/asn1/return;-><init>(ILorg/bouncycastle/asn1/while;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/return;->getLoadedObject()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0

    :cond_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    new-instance v0, Lorg/bouncycastle/asn1/interface;

    invoke-direct {v0, v3, v1, v4}, Lorg/bouncycastle/asn1/interface;-><init>(ZILorg/bouncycastle/asn1/while;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/interface;->getLoadedObject()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v0, 0x4

    if-eq v1, v0, :cond_8

    const/16 v0, 0x8

    if-eq v1, v0, :cond_7

    const/16 v0, 0x10

    if-eq v1, v0, :cond_6

    const/16 v0, 0x11

    if-ne v1, v0, :cond_5

    new-instance v0, Lorg/bouncycastle/asn1/strictfp;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/strictfp;-><init>(Lorg/bouncycastle/asn1/while;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/strictfp;->getLoadedObject()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown BER object encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lorg/bouncycastle/asn1/abstract;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/abstract;-><init>(Lorg/bouncycastle/asn1/while;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/abstract;->getLoadedObject()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Lorg/bouncycastle/asn1/a;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/a;-><init>(Lorg/bouncycastle/asn1/while;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/a;->getLoadedObject()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0

    :cond_8
    new-instance v0, Lorg/bouncycastle/asn1/extends;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/extends;-><init>(Lorg/bouncycastle/asn1/while;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/extends;->getLoadedObject()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite-length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :try_start_0
    invoke-virtual {p0, v0, v1, v4}, Lorg/bouncycastle/asn1/else;->for(III)Lorg/bouncycastle/asn1/final;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/support/v4/native;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0}, Landroid/support/v4/native;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public do(Lorg/bouncycastle/asn1/h0;)Landroid/support/v4/import;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/else;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/else;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/else;->if()Landroid/support/v4/import;

    move-result-object p1

    return-object p1
.end method

.method public else()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/else;->do:I

    return v0
.end method

.method public for(III)Lorg/bouncycastle/asn1/final;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lorg/bouncycastle/asn1/h0;

    invoke-direct {v2, p0, p3}, Lorg/bouncycastle/asn1/h0;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 p3, p1, 0x40

    if-eqz p3, :cond_1

    new-instance p1, Lorg/bouncycastle/asn1/z;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/h0;->for()[B

    move-result-object p3

    invoke-direct {p1, v0, p2, p3}, Lorg/bouncycastle/asn1/z;-><init>(ZI[B)V

    return-object p1

    :cond_1
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2

    new-instance p1, Lorg/bouncycastle/asn1/while;

    invoke-direct {p1, v2}, Lorg/bouncycastle/asn1/while;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, v0, p2}, Lorg/bouncycastle/asn1/while;->new(ZI)Lorg/bouncycastle/asn1/final;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz v0, :cond_9

    const/4 p1, 0x4

    if-eq p2, p1, :cond_7

    const/16 p1, 0x8

    if-eq p2, p1, :cond_6

    const/16 p1, 0x10

    if-eq p2, p1, :cond_4

    const/16 p1, 0x11

    if-ne p2, p1, :cond_3

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/else;->do(Lorg/bouncycastle/asn1/h0;)Landroid/support/v4/import;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/b;->if(Landroid/support/v4/import;)Lorg/bouncycastle/asn1/throw;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknown tag "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " encountered"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-boolean p1, p0, Lorg/bouncycastle/asn1/else;->if:Z

    if-eqz p1, :cond_5

    new-instance p1, Lorg/bouncycastle/asn1/k0;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/h0;->for()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/k0;-><init>([B)V

    return-object p1

    :cond_5
    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/else;->do(Lorg/bouncycastle/asn1/h0;)Landroid/support/v4/import;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/b;->do(Landroid/support/v4/import;)Lorg/bouncycastle/asn1/super;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance p1, Lorg/bouncycastle/asn1/b0;

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/else;->do(Lorg/bouncycastle/asn1/h0;)Landroid/support/v4/import;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/b0;-><init>(Landroid/support/v4/import;)V

    return-object p1

    :cond_7
    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/else;->do(Lorg/bouncycastle/asn1/h0;)Landroid/support/v4/import;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/import;->new()I

    move-result p2

    new-array p3, p2, [Lorg/bouncycastle/asn1/class;

    :goto_1
    if-eq v1, p2, :cond_8

    invoke-virtual {p1, v1}, Landroid/support/v4/import;->for(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/class;

    aput-object v0, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    new-instance p1, Lorg/bouncycastle/asn1/throws;

    invoke-direct {p1, p3}, Lorg/bouncycastle/asn1/throws;-><init>([Lorg/bouncycastle/asn1/class;)V

    return-object p1

    :cond_9
    iget-object p1, p0, Lorg/bouncycastle/asn1/else;->for:[[B

    invoke-static {p2, v2, p1}, Lorg/bouncycastle/asn1/else;->new(ILorg/bouncycastle/asn1/h0;[[B)Lorg/bouncycastle/asn1/final;

    move-result-object p1

    return-object p1
.end method

.method public goto()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/else;->do:I

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/else;->this(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public if()Landroid/support/v4/import;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/else;->break()Lorg/bouncycastle/asn1/final;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readFully([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/support/v4/a22;->case(Ljava/io/InputStream;[B)I

    move-result v0

    array-length p1, p1

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "EOF encountered in middle of object"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
