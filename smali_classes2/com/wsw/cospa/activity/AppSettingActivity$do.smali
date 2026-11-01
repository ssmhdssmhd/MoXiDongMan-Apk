.class Lcom/wsw/cospa/activity/AppSettingActivity$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/AppSettingActivity;->native()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/AppSettingActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/AppSettingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/AppSettingActivity$do;->do:Lcom/wsw/cospa/activity/AppSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/AppSettingActivity$do;->do:Lcom/wsw/cospa/activity/AppSettingActivity;

    invoke-static {p1}, Lcom/wsw/cospa/utils/native;->super(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity$do;->do:Lcom/wsw/cospa/activity/AppSettingActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/AppSettingActivity;->tvCacheSize:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "\u6e05\u9664\u6210\u529f\uff01"

    .line 3
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/AppSettingActivity$do;->do(Ljava/lang/String;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
