.class public final synthetic Landroid/support/v4/md1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic do:Lcom/luck/picture/lib/PictureBaseActivity;

.field public final synthetic if:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/luck/picture/lib/PictureBaseActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/md1;->do:Lcom/luck/picture/lib/PictureBaseActivity;

    iput-object p2, p0, Landroid/support/v4/md1;->if:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/md1;->do:Lcom/luck/picture/lib/PictureBaseActivity;

    iget-object v1, p0, Landroid/support/v4/md1;->if:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->if(Lcom/luck/picture/lib/PictureBaseActivity;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
