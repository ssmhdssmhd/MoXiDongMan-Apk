.class public Landroid/support/v4/mh2;
.super Landroid/support/v4/nh2;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/um;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/nh2;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/mh2;->do:Landroid/support/v4/um;

    invoke-virtual {v0, p1}, Landroid/support/v4/um;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public if(Lorg/bouncycastle/x509/X509StoreParameters;)V
    .locals 2

    instance-of v0, p1, Landroid/support/v4/ch2;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/um;

    check-cast p1, Landroid/support/v4/ch2;

    invoke-virtual {p1}, Landroid/support/v4/ch2;->do()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/um;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/support/v4/mh2;->do:Landroid/support/v4/um;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialization parameters must be an instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/support/v4/ch2;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
