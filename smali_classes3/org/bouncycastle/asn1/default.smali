.class public Lorg/bouncycastle/asn1/default;
.super Lorg/bouncycastle/asn1/switch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/asn1/default$do;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/switch;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x24

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/switch;->for(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/switch;-><init>(Ljava/io/OutputStream;IZ)V

    const/16 p1, 0x24

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/switch;->for(I)V

    return-void
.end method


# virtual methods
.method public case([B)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/default$do;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/asn1/default$do;-><init>(Lorg/bouncycastle/asn1/default;[B)V

    return-object v0
.end method

.method public try()Ljava/io/OutputStream;
    .locals 1

    const/16 v0, 0x3e8

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/default;->case([B)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
