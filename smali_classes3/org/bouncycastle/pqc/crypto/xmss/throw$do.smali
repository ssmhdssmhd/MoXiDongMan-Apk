.class public abstract Lorg/bouncycastle/pqc/crypto/xmss/throw$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/xmss/throw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/bouncycastle/pqc/crypto/xmss/throw$do;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final do:I

.field private for:J

.field private if:I

.field private new:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->if:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->for:J

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->new:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->do:I

    return-void
.end method

.method public static synthetic do(Lorg/bouncycastle/pqc/crypto/xmss/throw$do;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->if:I

    return p0
.end method

.method public static synthetic for(Lorg/bouncycastle/pqc/crypto/xmss/throw$do;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->do:I

    return p0
.end method

.method public static synthetic if(Lorg/bouncycastle/pqc/crypto/xmss/throw$do;)J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->for:J

    return-wide v0
.end method

.method public static synthetic new(Lorg/bouncycastle/pqc/crypto/xmss/throw$do;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->new:I

    return p0
.end method


# virtual methods
.method public abstract case()Lorg/bouncycastle/pqc/crypto/xmss/throw$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public else(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->new:I

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->case()Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object p1

    return-object p1
.end method

.method public goto(I)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->if:I

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->case()Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object p1

    return-object p1
.end method

.method public this(J)Lorg/bouncycastle/pqc/crypto/xmss/throw$do;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    iput-wide p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->for:J

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/throw$do;->case()Lorg/bouncycastle/pqc/crypto/xmss/throw$do;

    move-result-object p1

    return-object p1
.end method

.method public abstract try()Lorg/bouncycastle/pqc/crypto/xmss/throw;
.end method
