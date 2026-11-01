.class Lorg/bouncycastle/jcajce/provider/asymmetric/edec/this;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static do([B)Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/support/v4/ec0;

    invoke-direct {v0, p0}, Landroid/support/v4/ec0;-><init>([B)V

    invoke-virtual {v0}, Landroid/support/v4/ec0;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static for(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/a4;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/for;->new()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p2, Lorg/bouncycastle/crypto/params/break;

    if-eqz v2, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/break;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/break;->for()[B

    move-result-object p2

    goto :goto_0

    :cond_0
    instance-of v2, p2, Lorg/bouncycastle/crypto/params/try;

    if-eqz v2, :cond_1

    check-cast p2, Lorg/bouncycastle/crypto/params/try;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/try;->for()[B

    move-result-object p2

    goto :goto_0

    :cond_1
    instance-of v2, p2, Lorg/bouncycastle/crypto/params/goto;

    if-eqz v2, :cond_2

    check-cast p2, Lorg/bouncycastle/crypto/params/goto;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/goto;->for()[B

    move-result-object p2

    goto :goto_0

    :cond_2
    check-cast p2, Lorg/bouncycastle/crypto/params/for;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/for;->for()[B

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/this;->do([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "    public data: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p2}, Lorg/bouncycastle/util/encoders/for;->goto([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static if([B[B)Z
    .locals 6

    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    invoke-static {p0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/this;->if([B[B)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p0

    if-eq v1, v4, :cond_1

    aget-byte v4, p0, v1

    aget-byte v5, p1, v1

    xor-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method
