.class public Landroid/support/v4/qo0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Ljava/lang/String;

.field private final for:Ljava/math/BigInteger;

.field private final if:Ljava/math/BigInteger;

.field private final new:[Ljava/math/BigInteger;

.field private final try:[Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "participantId"

    invoke-static {p1, v0}, Landroid/support/v4/to0;->switch(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gx1"

    invoke-static {p2, v0}, Landroid/support/v4/to0;->switch(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gx2"

    invoke-static {p3, v0}, Landroid/support/v4/to0;->switch(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "knowledgeProofForX1"

    invoke-static {p4, v0}, Landroid/support/v4/to0;->switch(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "knowledgeProofForX2"

    invoke-static {p5, v0}, Landroid/support/v4/to0;->switch(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/support/v4/qo0;->do:Ljava/lang/String;

    iput-object p2, p0, Landroid/support/v4/qo0;->if:Ljava/math/BigInteger;

    iput-object p3, p0, Landroid/support/v4/qo0;->for:Ljava/math/BigInteger;

    array-length p1, p4

    invoke-static {p4, p1}, Landroid/support/v4/q3;->implements([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/qo0;->new:[Ljava/math/BigInteger;

    array-length p1, p5

    invoke-static {p5, p1}, Landroid/support/v4/q3;->implements([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/qo0;->try:[Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public do()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/qo0;->if:Ljava/math/BigInteger;

    return-object v0
.end method

.method public for()[Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/qo0;->new:[Ljava/math/BigInteger;

    array-length v1, v0

    invoke-static {v0, v1}, Landroid/support/v4/q3;->implements([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public if()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/qo0;->for:Ljava/math/BigInteger;

    return-object v0
.end method

.method public new()[Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/qo0;->try:[Ljava/math/BigInteger;

    array-length v1, v0

    invoke-static {v0, v1}, Landroid/support/v4/q3;->implements([Ljava/math/BigInteger;I)[Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public try()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/qo0;->do:Ljava/lang/String;

    return-object v0
.end method
