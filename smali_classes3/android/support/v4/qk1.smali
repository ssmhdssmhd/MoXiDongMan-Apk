.class public Landroid/support/v4/qk1;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field public do:Landroid/support/v4/ok1;

.field public for:I

.field public if:Landroid/support/v4/pk1;

.field public new:Ljava/security/SecureRandom;

.field public try:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Rainbow"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/support/v4/pk1;

    invoke-direct {v0}, Landroid/support/v4/pk1;-><init>()V

    iput-object v0, p0, Landroid/support/v4/qk1;->if:Landroid/support/v4/pk1;

    const/16 v0, 0x400

    iput v0, p0, Landroid/support/v4/qk1;->for:I

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/qk1;->new:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/qk1;->try:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    iget-boolean v0, p0, Landroid/support/v4/qk1;->try:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/ok1;

    iget-object v1, p0, Landroid/support/v4/qk1;->new:Ljava/security/SecureRandom;

    new-instance v2, Landroid/support/v4/uk1;

    new-instance v3, Landroid/support/v4/tk1;

    invoke-direct {v3}, Landroid/support/v4/tk1;-><init>()V

    invoke-virtual {v3}, Landroid/support/v4/tk1;->new()[I

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/uk1;-><init>([I)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/ok1;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/uk1;)V

    iput-object v0, p0, Landroid/support/v4/qk1;->do:Landroid/support/v4/ok1;

    iget-object v1, p0, Landroid/support/v4/qk1;->if:Landroid/support/v4/pk1;

    invoke-virtual {v1, v0}, Landroid/support/v4/pk1;->init(Landroid/support/v4/dr0;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/qk1;->try:Z

    :cond_0
    iget-object v0, p0, Landroid/support/v4/qk1;->if:Landroid/support/v4/pk1;

    invoke-virtual {v0}, Landroid/support/v4/pk1;->generateKeyPair()Landroid/support/v4/y3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v1

    check-cast v1, Landroid/support/v4/zk1;

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v0

    check-cast v0, Landroid/support/v4/wk1;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Landroid/support/v4/f6;

    invoke-direct {v3, v1}, Landroid/support/v4/f6;-><init>(Landroid/support/v4/zk1;)V

    new-instance v1, Landroid/support/v4/e6;

    invoke-direct {v1, v0}, Landroid/support/v4/e6;-><init>(Landroid/support/v4/wk1;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Landroid/support/v4/qk1;->for:I

    iput-object p2, p0, Landroid/support/v4/qk1;->new:Ljava/security/SecureRandom;

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Landroid/support/v4/tk1;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/tk1;

    new-instance v0, Landroid/support/v4/ok1;

    new-instance v1, Landroid/support/v4/uk1;

    invoke-virtual {p1}, Landroid/support/v4/tk1;->new()[I

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/support/v4/uk1;-><init>([I)V

    invoke-direct {v0, p2, v1}, Landroid/support/v4/ok1;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/uk1;)V

    iput-object v0, p0, Landroid/support/v4/qk1;->do:Landroid/support/v4/ok1;

    iget-object p1, p0, Landroid/support/v4/qk1;->if:Landroid/support/v4/pk1;

    invoke-virtual {p1, v0}, Landroid/support/v4/pk1;->init(Landroid/support/v4/dr0;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/qk1;->try:Z

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a RainbowParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
