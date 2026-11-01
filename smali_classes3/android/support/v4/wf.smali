.class public Landroid/support/v4/wf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/oa0;",
            ">;"
        }
    .end annotation
.end field

.field private if:Landroid/support/v4/c10;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/wf;->do:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/support/v4/c10;

    invoke-direct {v0}, Landroid/support/v4/c10;-><init>()V

    iput-object v0, p0, Landroid/support/v4/wf;->if:Landroid/support/v4/c10;

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/c10;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/wf;->if:Landroid/support/v4/c10;

    return-object v0
.end method

.method public for(Landroid/support/v4/c10;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/wf;->if:Landroid/support/v4/c10;

    return-void
.end method

.method public if()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/oa0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/wf;->do:Ljava/util/List;

    return-object v0
.end method

.method public new(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/oa0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroid/support/v4/wf;->do:Ljava/util/List;

    return-void
.end method
