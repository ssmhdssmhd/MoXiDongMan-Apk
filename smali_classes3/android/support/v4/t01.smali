.class public Landroid/support/v4/t01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/cert/CertStoreParameters;


# instance fields
.field private do:Ljava/util/Collection;

.field private if:Z


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v4/t01;-><init>(Ljava/util/Collection;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/t01;->do:Ljava/util/Collection;

    iput-boolean p2, p0, Landroid/support/v4/t01;->if:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public do()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/t01;->do:Ljava/util/Collection;

    return-object v0
.end method

.method public if()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/t01;->if:Z

    return v0
.end method
