.class abstract Lorg/bouncycastle/asn1/l0;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final do:Ljava/io/InputStream;

.field private if:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/l0;->do:Ljava/io/InputStream;

    iput p2, p0, Lorg/bouncycastle/asn1/l0;->if:I

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/l0;->if:I

    return v0
.end method

.method public if(Z)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/l0;->do:Ljava/io/InputStream;

    instance-of v1, v0, Lorg/bouncycastle/asn1/i0;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/i0;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/i0;->new(Z)V

    :cond_0
    return-void
.end method
