.class public Lorg/bouncycastle/crypto/util/try;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/util/try$if;
    }
.end annotation


# instance fields
.field private final do:Lorg/bouncycastle/asn1/n;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/try;->do:Lorg/bouncycastle/asn1/n;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/asn1/n;Lorg/bouncycastle/crypto/util/try$do;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/util/try;-><init>(Lorg/bouncycastle/asn1/n;)V

    return-void
.end method


# virtual methods
.method public do()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/util/try;->do:Lorg/bouncycastle/asn1/n;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method
