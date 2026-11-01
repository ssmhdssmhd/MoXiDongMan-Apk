.class public Landroid/support/v4/wy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsDHVerifier;


# static fields
.field public static final for:I = 0x800

.field public static final new:Ljava/util/Vector;


# instance fields
.field public do:Ljava/util/Vector;

.field public if:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Landroid/support/v4/wy;->new:Ljava/util/Vector;

    sget-object v0, Landroid/support/v4/su;->d:Landroid/support/v4/ou;

    invoke-static {v0}, Landroid/support/v4/wy;->do(Landroid/support/v4/ou;)V

    sget-object v0, Landroid/support/v4/su;->f:Landroid/support/v4/ou;

    invoke-static {v0}, Landroid/support/v4/wy;->do(Landroid/support/v4/ou;)V

    sget-object v0, Landroid/support/v4/su;->h:Landroid/support/v4/ou;

    invoke-static {v0}, Landroid/support/v4/wy;->do(Landroid/support/v4/ou;)V

    sget-object v0, Landroid/support/v4/su;->j:Landroid/support/v4/ou;

    invoke-static {v0}, Landroid/support/v4/wy;->do(Landroid/support/v4/ou;)V

    sget-object v0, Landroid/support/v4/su;->l:Landroid/support/v4/ou;

    invoke-static {v0}, Landroid/support/v4/wy;->do(Landroid/support/v4/ou;)V

    sget-object v0, Landroid/support/v4/su;->break:Landroid/support/v4/ou;

    invoke-static {v0}, Landroid/support/v4/wy;->do(Landroid/support/v4/ou;)V

    sget-object v0, Landroid/support/v4/su;->const:Landroid/support/v4/ou;

    invoke-static {v0}, Landroid/support/v4/wy;->do(Landroid/support/v4/ou;)V

    sget-object v0, Landroid/support/v4/su;->throw:Landroid/support/v4/ou;

    invoke-static {v0}, Landroid/support/v4/wy;->do(Landroid/support/v4/ou;)V

    sget-object v0, Landroid/support/v4/su;->native:Landroid/support/v4/ou;

    invoke-static {v0}, Landroid/support/v4/wy;->do(Landroid/support/v4/ou;)V

    sget-object v0, Landroid/support/v4/su;->static:Landroid/support/v4/ou;

    invoke-static {v0}, Landroid/support/v4/wy;->do(Landroid/support/v4/ou;)V

    sget-object v0, Landroid/support/v4/su;->default:Landroid/support/v4/ou;

    invoke-static {v0}, Landroid/support/v4/wy;->do(Landroid/support/v4/ou;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/support/v4/wy;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Landroid/support/v4/wy;->new:Ljava/util/Vector;

    invoke-direct {p0, v0, p1}, Landroid/support/v4/wy;-><init>(Ljava/util/Vector;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/wy;->do:Ljava/util/Vector;

    iput p2, p0, Landroid/support/v4/wy;->if:I

    return-void
.end method

.method private static do(Landroid/support/v4/ou;)V
    .locals 1

    sget-object v0, Landroid/support/v4/wy;->new:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public accept(Landroid/support/v4/ou;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/wy;->try(Landroid/support/v4/ou;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/wy;->new(Landroid/support/v4/ou;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public case()I
    .locals 1

    iget v0, p0, Landroid/support/v4/wy;->if:I

    return v0
.end method

.method public for(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 0

    if-eq p1, p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

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

.method public if(Landroid/support/v4/ou;Landroid/support/v4/ou;)Z
    .locals 2

    if-eq p1, p2, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/ou;->case()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v4/ou;->case()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/wy;->for(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/ou;->if()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2}, Landroid/support/v4/ou;->if()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/wy;->for(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

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

.method public new(Landroid/support/v4/ou;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/wy;->do:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v4/wy;->do:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/ou;

    invoke-virtual {p0, p1, v2}, Landroid/support/v4/wy;->if(Landroid/support/v4/ou;Landroid/support/v4/ou;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public try(Landroid/support/v4/ou;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/support/v4/ou;->case()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v4/wy;->case()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
