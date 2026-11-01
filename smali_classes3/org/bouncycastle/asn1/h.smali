.class public Lorg/bouncycastle/asn1/h;
.super Lorg/bouncycastle/asn1/this;
.source "SourceFile"


# static fields
.field public static final do:Lorg/bouncycastle/asn1/h;

.field private static final if:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/h;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/h;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/asn1/h;->if:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/this;-><init>()V

    return-void
.end method


# virtual methods
.method public case()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public goto()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public try(Lorg/bouncycastle/asn1/const;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/asn1/h;->if:[B

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/asn1/const;->this(I[B)V

    return-void
.end method
