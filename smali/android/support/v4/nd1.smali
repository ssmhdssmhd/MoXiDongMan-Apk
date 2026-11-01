.class public final synthetic Landroid/support/v4/nd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic do:Lcom/luck/picture/lib/PictureBaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/luck/picture/lib/PictureBaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/nd1;->do:Lcom/luck/picture/lib/PictureBaseActivity;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/nd1;->do:Lcom/luck/picture/lib/PictureBaseActivity;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->do(Lcom/luck/picture/lib/PictureBaseActivity;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
