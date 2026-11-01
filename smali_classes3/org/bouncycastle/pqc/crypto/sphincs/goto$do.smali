.class Lorg/bouncycastle/pqc/crypto/sphincs/goto$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/sphincs/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field public do:I

.field public for:J

.field public if:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincs/goto$do;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/sphincs/goto$do;->do:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/goto$do;->do:I

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/sphincs/goto$do;->if:J

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/goto$do;->if:J

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/sphincs/goto$do;->for:J

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/goto$do;->for:J

    return-void
.end method
