.class Lcom/wsw/cospa/activity/SearchComicActivity$case$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/SearchComicActivity$case$if;->subscribe(Lio/reactivex/ObservableEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/SearchComicActivity$case$if;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/SearchComicActivity$case$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$case$if$do;->do:Lcom/wsw/cospa/activity/SearchComicActivity$case$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity$case$if$do;->do:Lcom/wsw/cospa/activity/SearchComicActivity$case$if;

    iget-object v0, v0, Lcom/wsw/cospa/activity/SearchComicActivity$case$if;->do:Lcom/wsw/cospa/activity/SearchComicActivity$case;

    iget-object v0, v0, Lcom/wsw/cospa/activity/SearchComicActivity$case;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->ll_comic_shelf:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity$case$if$do;->do:Lcom/wsw/cospa/activity/SearchComicActivity$case$if;

    iget-object v0, v0, Lcom/wsw/cospa/activity/SearchComicActivity$case$if;->do:Lcom/wsw/cospa/activity/SearchComicActivity$case;

    iget-object v0, v0, Lcom/wsw/cospa/activity/SearchComicActivity$case;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFlowView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
