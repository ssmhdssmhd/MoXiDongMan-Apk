.class public Landroid/support/v4/kh2;
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

    iget-object v0, p0, Landroid/support/v4/kh2;->do:Landroid/support/v4/um;

    invoke-virtual {v0, p1}, Landroid/support/v4/um;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public if(Lorg/bouncycastle/x509/X509StoreParameters;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v4/ch2;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/um;

    check-cast p1, Landroid/support/v4/ch2;

    invoke-virtual {p1}, Landroid/support/v4/ch2;->do()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/um;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/support/v4/kh2;->do:Landroid/support/v4/um;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
