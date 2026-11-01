.class Lcom/wsw/cospa/activity/AddBookShelfActivity$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/listener/OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/AddBookShelfActivity;->this()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/AddBookShelfActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/AddBookShelfActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$do;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/bean/ComicShelfGroupBean;ZLio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/activity/AddBookShelfActivity$do;->for(Lcom/wsw/cospa/bean/ComicShelfGroupBean;ZLio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private static synthetic for(Lcom/wsw/cospa/bean/ComicShelfGroupBean;ZLio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setEnable(Z)V

    const/4 p1, 0x0

    .line 2
    invoke-static {p0, p1}, Lcom/wsw/cospa/dao/do;->const(Lcom/wsw/cospa/bean/ComicShelfGroupBean;Z)V

    .line 3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method public static synthetic if(Lcom/wsw/cospa/activity/AddBookShelfActivity$do;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/AddBookShelfActivity$do;->new(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic new(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$do;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->switch(Lcom/wsw/cospa/activity/AddBookShelfActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "groupKey"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity$do;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/wsw/cospa/bean/ComicShelfGroupBean;Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/activity/do;

    invoke-direct {v0, p1, p2}, Lcom/wsw/cospa/activity/do;-><init>(Lcom/wsw/cospa/bean/ComicShelfGroupBean;Z)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    sget-object p2, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 2
    invoke-virtual {p1, p2}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    new-instance p2, Lcom/wsw/cospa/activity/if;

    invoke-direct {p2, p0}, Lcom/wsw/cospa/activity/if;-><init>(Lcom/wsw/cospa/activity/AddBookShelfActivity$do;)V

    .line 3
    invoke-virtual {p1, p2}, Lio/reactivex/new;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onCheckedChanged(Lcom/wsw/cospa/bean/ComicSourceBean;Z)V
    .locals 0

    return-void
.end method
