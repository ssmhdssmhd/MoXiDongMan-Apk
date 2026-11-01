.class Lcom/wsw/cospa/activity/AddComicSourceActivity$for;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/AddComicSourceActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/AddComicSourceActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/AddComicSourceActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$for;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$for;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->volatile(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 6
    const-class v0, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$for;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->b(Lcom/wsw/cospa/bean/ComicSourceBean;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/support/v4/bz1;->onComplete()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$for;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->switch(Lcom/wsw/cospa/activity/AddComicSourceActivity;)Landroid/support/v4/xh1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$for;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->switch(Lcom/wsw/cospa/activity/AddComicSourceActivity;)Landroid/support/v4/xh1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/AddComicSourceActivity$for;->do(Ljava/lang/String;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$for;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    iget-object v0, v0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity$for;->do:Lcom/wsw/cospa/activity/AddComicSourceActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->switch(Lcom/wsw/cospa/activity/AddComicSourceActivity;)Landroid/support/v4/xh1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
