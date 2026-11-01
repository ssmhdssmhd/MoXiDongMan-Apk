.class public Lorg/bouncycastle/crypto/tls/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final case:Ljava/lang/Integer;

.field public static final do:Ljava/lang/Integer;

.field public static final else:Ljava/lang/Integer;

.field public static final for:Ljava/lang/Integer;

.field public static final goto:Ljava/lang/Integer;

.field public static final if:Ljava/lang/Integer;

.field public static final new:Ljava/lang/Integer;

.field public static final try:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x16

    invoke-static {v0}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/v;->do:Ljava/lang/Integer;

    const/16 v0, 0x17

    invoke-static {v0}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/v;->if:Ljava/lang/Integer;

    const/16 v0, 0xf

    invoke-static {v0}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/v;->for:Ljava/lang/Integer;

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/v;->new:Ljava/lang/Integer;

    const/16 v0, 0x15

    invoke-static {v0}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/v;->try:Ljava/lang/Integer;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/v;->case:Ljava/lang/Integer;

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/v;->else:Ljava/lang/Integer;

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/support/v4/hn0;->for(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/v;->goto:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abstract([B)Lorg/bouncycastle/crypto/tls/interface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/interface;->for(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/interface;

    move-result-object p0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static break()[B
    .locals 1

    invoke-static {}, Lorg/bouncycastle/crypto/tls/v;->this()[B

    move-result-object v0

    return-object v0
.end method

.method public static case(Ljava/util/Hashtable;Lorg/bouncycastle/crypto/tls/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/v;->case:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/v;->super(Lorg/bouncycastle/crypto/tls/f;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static catch()[B
    .locals 1

    invoke-static {}, Lorg/bouncycastle/crypto/tls/v;->this()[B

    move-result-object v0

    return-object v0
.end method

.method public static class(Lorg/bouncycastle/crypto/tls/interface;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/interface;->do(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method public static const(S)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->native(S)V

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/l0;->I0(S[BI)V

    return-object v0
.end method

.method public static continue([B)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/l0;->d0([BI)S

    move-result p0

    return p0

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static default(Ljava/util/Hashtable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/v;->if:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/v;->private([B)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static do(Ljava/util/Hashtable;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/tls/v;->do:Ljava/lang/Integer;

    invoke-static {}, Lorg/bouncycastle/crypto/tls/v;->break()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static else(Ljava/util/Hashtable;Lorg/bouncycastle/crypto/tls/const;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/v;->else:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/v;->throw(Lorg/bouncycastle/crypto/tls/const;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static extends(Ljava/util/Hashtable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/v;->goto:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/v;->protected([B)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static final(I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->break(I)V

    new-array p0, p0, [B

    return-object p0
.end method

.method private static finally([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static for(Ljava/util/Hashtable;Lorg/bouncycastle/crypto/tls/interface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/v;->for:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/v;->class(Lorg/bouncycastle/crypto/tls/interface;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static goto(Ljava/util/Hashtable;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/tls/v;->goto:Ljava/lang/Integer;

    invoke-static {}, Lorg/bouncycastle/crypto/tls/v;->while()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static if(Ljava/util/Hashtable;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/tls/v;->if:Ljava/lang/Integer;

    invoke-static {}, Lorg/bouncycastle/crypto/tls/v;->catch()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static import(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    return-object p0
.end method

.method public static interface([B)Lorg/bouncycastle/crypto/tls/const;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/const;->case(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/const;

    move-result-object p0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static native(Ljava/util/Hashtable;)Lorg/bouncycastle/crypto/tls/interface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/v;->for:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/v;->abstract([B)Lorg/bouncycastle/crypto/tls/interface;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static new(Ljava/util/Hashtable;S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/v;->new:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/v;->const(S)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static package([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/v;->finally([B)Z

    move-result p0

    return p0
.end method

.method public static private([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/v;->finally([B)Z

    move-result p0

    return p0
.end method

.method public static protected([B)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/v;->finally([B)Z

    move-result p0

    return p0
.end method

.method public static public(Ljava/util/Hashtable;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/v;->new:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/v;->continue([B)S

    move-result p0

    :goto_0
    return p0
.end method

.method public static return(Ljava/util/Hashtable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/v;->try:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/v;->strictfp([B)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static static(Ljava/util/Hashtable;)Lorg/bouncycastle/crypto/tls/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/v;->case:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/v;->volatile([B)Lorg/bouncycastle/crypto/tls/f;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static strictfp([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 v0, 0x2f

    invoke-direct {p0, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :cond_1
    array-length p0, p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static super(Lorg/bouncycastle/crypto/tls/f;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/f;->if(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method public static switch(Ljava/util/Hashtable;)Lorg/bouncycastle/crypto/tls/const;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/v;->else:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/v;->interface([B)Lorg/bouncycastle/crypto/tls/const;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static this()[B
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/tls/l0;->do:[B

    return-object v0
.end method

.method public static throw(Lorg/bouncycastle/crypto/tls/const;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/tls/const;->do(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Landroid/support/v4/n72;-><init>(S)V

    throw p0
.end method

.method public static throws(Ljava/util/Hashtable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/v;->do:Ljava/lang/Integer;

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/tls/l0;->b(Ljava/util/Hashtable;Ljava/lang/Integer;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/v;->package([B)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static try(Ljava/util/Hashtable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/crypto/tls/v;->try:Ljava/lang/Integer;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/v;->final(I)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static volatile([B)Lorg/bouncycastle/crypto/tls/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/f;->new(Ljava/io/InputStream;)Lorg/bouncycastle/crypto/tls/f;

    move-result-object p0

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/a0;->for(Ljava/io/ByteArrayInputStream;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'extensionData\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static while()[B
    .locals 1

    invoke-static {}, Lorg/bouncycastle/crypto/tls/v;->this()[B

    move-result-object v0

    return-object v0
.end method
