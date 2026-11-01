.class Lcom/wsw/cospa/activity/WebViewActivity$do;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/WebViewActivity;->extends(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Lcom/wsw/cospa/bean/ComicShelfBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/WebViewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/WebViewActivity$do;->do:Lcom/wsw/cospa/activity/WebViewActivity;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/WebViewActivity$do;->do:Lcom/wsw/cospa/activity/WebViewActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/WebViewActivity;->default(Lcom/wsw/cospa/activity/WebViewActivity;Lcom/wsw/cospa/bean/ComicShelfBean;)V

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
    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/WebViewActivity$do;->do(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method
