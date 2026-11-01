.class public final Lorg/bouncycastle/crypto/tls/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final case:Lorg/bouncycastle/crypto/tls/a;

.field public static final else:Lorg/bouncycastle/crypto/tls/a;

.field public static final for:Lorg/bouncycastle/crypto/tls/a;

.field public static final goto:Lorg/bouncycastle/crypto/tls/a;

.field public static final new:Lorg/bouncycastle/crypto/tls/a;

.field public static final try:Lorg/bouncycastle/crypto/tls/a;


# instance fields
.field private do:I

.field private if:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/tls/a;

    const/16 v1, 0x300

    const-string v2, "SSL 3.0"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/a;->for:Lorg/bouncycastle/crypto/tls/a;

    new-instance v0, Lorg/bouncycastle/crypto/tls/a;

    const/16 v1, 0x301

    const-string v2, "TLS 1.0"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/a;->new:Lorg/bouncycastle/crypto/tls/a;

    new-instance v0, Lorg/bouncycastle/crypto/tls/a;

    const/16 v1, 0x302

    const-string v2, "TLS 1.1"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/a;->try:Lorg/bouncycastle/crypto/tls/a;

    new-instance v0, Lorg/bouncycastle/crypto/tls/a;

    const/16 v1, 0x303

    const-string v2, "TLS 1.2"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/a;->case:Lorg/bouncycastle/crypto/tls/a;

    new-instance v0, Lorg/bouncycastle/crypto/tls/a;

    const v1, 0xfeff

    const-string v2, "DTLS 1.0"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/a;->else:Lorg/bouncycastle/crypto/tls/a;

    new-instance v0, Lorg/bouncycastle/crypto/tls/a;

    const v1, 0xfefd

    const-string v2, "DTLS 1.2"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/tls/a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/tls/a;->goto:Lorg/bouncycastle/crypto/tls/a;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    and-int/2addr p1, v0

    iput p1, p0, Lorg/bouncycastle/crypto/tls/a;->do:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/a;->if:Ljava/lang/String;

    return-void
.end method

.method private static else(IILjava/lang/String;)Lorg/bouncycastle/crypto/tls/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/bouncycastle/crypto/tls/l0;->while(I)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->while(I)V

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, p1

    const/high16 p1, 0x10000

    or-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/for;->final(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/crypto/tls/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " 0x"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/crypto/tls/a;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static if(II)Lorg/bouncycastle/crypto/tls/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0xfe

    const/16 v1, 0x2f

    if-ne p0, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string v0, "DTLS"

    :goto_0
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/crypto/tls/a;->else(IILjava/lang/String;)Lorg/bouncycastle/crypto/tls/a;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/bouncycastle/crypto/tls/a;->else:Lorg/bouncycastle/crypto/tls/a;

    return-object p0

    :pswitch_1
    new-instance p0, Landroid/support/v4/n72;

    invoke-direct {p0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :pswitch_2
    sget-object p0, Lorg/bouncycastle/crypto/tls/a;->goto:Lorg/bouncycastle/crypto/tls/a;

    return-object p0

    :cond_0
    new-instance p0, Landroid/support/v4/n72;

    invoke-direct {p0, v1}, Landroid/support/v4/n72;-><init>(S)V

    throw p0

    :cond_1
    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const-string v0, "TLS"

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/bouncycastle/crypto/tls/a;->case:Lorg/bouncycastle/crypto/tls/a;

    return-object p0

    :cond_3
    sget-object p0, Lorg/bouncycastle/crypto/tls/a;->try:Lorg/bouncycastle/crypto/tls/a;

    return-object p0

    :cond_4
    sget-object p0, Lorg/bouncycastle/crypto/tls/a;->new:Lorg/bouncycastle/crypto/tls/a;

    return-object p0

    :cond_5
    sget-object p0, Lorg/bouncycastle/crypto/tls/a;->for:Lorg/bouncycastle/crypto/tls/a;

    return-object p0

    :pswitch_data_0
    .packed-switch 0xfd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public break(Lorg/bouncycastle/crypto/tls/a;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a;->try()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/a;->try()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/a;->case()I

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a;->case()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a;->goto()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-lez p1, :cond_2

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    :goto_0
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public case()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/a;->do:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public catch()Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/tls/a;->for:Lorg/bouncycastle/crypto/tls/a;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public class()Z
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a;->try()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public do(Lorg/bouncycastle/crypto/tls/a;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/tls/a;->do:I

    iget p1, p1, Lorg/bouncycastle/crypto/tls/a;->do:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/bouncycastle/crypto/tls/a;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/crypto/tls/a;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/a;->do(Lorg/bouncycastle/crypto/tls/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public for()Lorg/bouncycastle/crypto/tls/a;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a;->goto()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lorg/bouncycastle/crypto/tls/a;->else:Lorg/bouncycastle/crypto/tls/a;

    if-ne p0, v0, :cond_1

    sget-object v0, Lorg/bouncycastle/crypto/tls/a;->try:Lorg/bouncycastle/crypto/tls/a;

    return-object v0

    :cond_1
    sget-object v0, Lorg/bouncycastle/crypto/tls/a;->case:Lorg/bouncycastle/crypto/tls/a;

    return-object v0
.end method

.method public goto()Z
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a;->try()I

    move-result v0

    const/16 v1, 0xfe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/a;->do:I

    return v0
.end method

.method public new()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/a;->do:I

    return v0
.end method

.method public this(Lorg/bouncycastle/crypto/tls/a;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a;->try()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/a;->try()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/tls/a;->case()I

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a;->case()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/a;->goto()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_2

    :goto_0
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/a;->if:Ljava/lang/String;

    return-object v0
.end method

.method public try()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/a;->do:I

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method
