.class Lorg/bouncycastle/asn1/catch$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/catch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private final do:I

.field private final if:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/support/v4/q3;->n([B)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/catch$do;->do:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/catch$do;->if:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/asn1/catch$do;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/catch$do;->if:[B

    check-cast p1, Lorg/bouncycastle/asn1/catch$do;

    iget-object p1, p1, Lorg/bouncycastle/asn1/catch$do;->if:[B

    invoke-static {v0, p1}, Landroid/support/v4/q3;->case([B[B)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/catch$do;->do:I

    return v0
.end method
