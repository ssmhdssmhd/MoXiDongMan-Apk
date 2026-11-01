.class public Lorg/bouncycastle/crypto/digests/if$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field private do:I

.field private if:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/crypto/digests/if$if;->do:I

    iput-object p2, p0, Lorg/bouncycastle/crypto/digests/if$if;->if:[B

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/if$if;->do:I

    return v0
.end method

.method public if()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/if$if;->if:[B

    return-object v0
.end method
