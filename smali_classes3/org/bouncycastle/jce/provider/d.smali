.class public Lorg/bouncycastle/jce/provider/d;
.super Landroid/support/v4/nh2;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/x509/util/do;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/nh2;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/r12;
        }
    .end annotation

    instance-of v0, p1, Landroid/support/v4/yg2;

    if-nez v0, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p1

    :cond_0
    check-cast p1, Landroid/support/v4/yg2;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Landroid/support/v4/yg2;->case()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/d;->do:Lorg/bouncycastle/x509/util/do;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/x509/util/do;->return(Landroid/support/v4/yg2;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/d;->do:Lorg/bouncycastle/x509/util/do;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/x509/util/do;->return(Landroid/support/v4/yg2;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/d;->do:Lorg/bouncycastle/x509/util/do;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/x509/util/do;->class(Landroid/support/v4/yg2;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/d;->do:Lorg/bouncycastle/x509/util/do;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/x509/util/do;->final(Landroid/support/v4/yg2;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/d;->do:Lorg/bouncycastle/x509/util/do;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/x509/util/do;->throw(Landroid/support/v4/yg2;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/d;->do:Lorg/bouncycastle/x509/util/do;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/x509/util/do;->native(Landroid/support/v4/yg2;)Ljava/util/Collection;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public if(Lorg/bouncycastle/x509/X509StoreParameters;)V
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/jce/try;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/x509/util/do;

    check-cast p1, Lorg/bouncycastle/jce/try;

    invoke-direct {v0, p1}, Lorg/bouncycastle/x509/util/do;-><init>(Lorg/bouncycastle/jce/try;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/d;->do:Lorg/bouncycastle/x509/util/do;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialization parameters must be an instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lorg/bouncycastle/jce/try;

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
