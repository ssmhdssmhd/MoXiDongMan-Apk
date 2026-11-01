.class public Lorg/bouncycastle/asn1/for;
.super Lorg/bouncycastle/asn1/final;
.source "SourceFile"


# static fields
.field private static final for:[B

.field private static final if:[B

.field public static final new:Lorg/bouncycastle/asn1/for;

.field public static final try:Lorg/bouncycastle/asn1/for;


# instance fields
.field private final do:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    sput-object v1, Lorg/bouncycastle/asn1/for;->if:[B

    new-array v1, v0, [B

    aput-byte v3, v1, v3

    sput-object v1, Lorg/bouncycastle/asn1/for;->for:[B

    new-instance v1, Lorg/bouncycastle/asn1/for;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/for;-><init>(Z)V

    sput-object v1, Lorg/bouncycastle/asn1/for;->new:Lorg/bouncycastle/asn1/for;

    new-instance v1, Lorg/bouncycastle/asn1/for;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/for;-><init>(Z)V

    sput-object v1, Lorg/bouncycastle/asn1/for;->try:Lorg/bouncycastle/asn1/for;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/final;-><init>()V

    if-eqz p1, :cond_0

    sget-object p1, Lorg/bouncycastle/asn1/for;->if:[B

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/bouncycastle/asn1/for;->for:[B

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/for;->do:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/final;-><init>()V

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    if-nez v1, :cond_0

    sget-object p1, Lorg/bouncycastle/asn1/for;->for:[B

    iput-object p1, p0, Lorg/bouncycastle/asn1/for;->do:[B

    goto :goto_0

    :cond_0
    aget-byte v0, p1, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    sget-object p1, Lorg/bouncycastle/asn1/for;->if:[B

    iput-object p1, p0, Lorg/bouncycastle/asn1/for;->do:[B

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/for;->do:[B

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "byte value should have 1 byte in it"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static catch([B)Lorg/bouncycastle/asn1/for;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/for;->new:Lorg/bouncycastle/asn1/for;

    return-object p0

    :cond_0
    aget-byte v0, p0, v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    sget-object p0, Lorg/bouncycastle/asn1/for;->try:Lorg/bouncycastle/asn1/for;

    return-object p0

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/for;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/for;-><init>([B)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BOOLEAN value should have 1 byte in it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static class(I)Lorg/bouncycastle/asn1/for;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/for;->try:Lorg/bouncycastle/asn1/for;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/bouncycastle/asn1/for;->new:Lorg/bouncycastle/asn1/for;

    :goto_0
    return-object p0
.end method

.method public static const(Ljava/lang/Object;)Lorg/bouncycastle/asn1/for;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/for;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/for;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct boolean from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/for;

    return-object p0
.end method

.method public static final(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/for;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    if-nez p1, :cond_1

    instance-of p1, p0, Lorg/bouncycastle/asn1/for;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/class;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/for;->catch([B)Lorg/bouncycastle/asn1/for;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/for;->const(Ljava/lang/Object;)Lorg/bouncycastle/asn1/for;

    move-result-object p0

    return-object p0
.end method

.method public static super(Z)Lorg/bouncycastle/asn1/for;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/for;->try:Lorg/bouncycastle/asn1/for;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/bouncycastle/asn1/for;->new:Lorg/bouncycastle/asn1/for;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public case()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public goto()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/for;->do:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public new(Lorg/bouncycastle/asn1/final;)Z
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/asn1/for;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/for;->do:[B

    aget-byte v0, v0, v1

    check-cast p1, Lorg/bouncycastle/asn1/for;

    iget-object p1, p1, Lorg/bouncycastle/asn1/for;->do:[B

    aget-byte p1, p1, v1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public throw()Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/for;->do:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/for;->do:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    const-string v0, "TRUE"

    goto :goto_0

    :cond_0
    const-string v0, "FALSE"

    :goto_0
    return-object v0
.end method

.method public try(Lorg/bouncycastle/asn1/const;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/for;->do:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/asn1/const;->this(I[B)V

    return-void
.end method
