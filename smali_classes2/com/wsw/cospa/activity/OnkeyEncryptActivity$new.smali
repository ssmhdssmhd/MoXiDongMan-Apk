.class Lcom/wsw/cospa/activity/OnkeyEncryptActivity$new;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->finally(Landroid/net/Uri;)V
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
.field public final synthetic do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$new;->do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$new;->do:Lcom/wsw/cospa/activity/OnkeyEncryptActivity;

    invoke-static {p1}, Landroid/support/v4/fz;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity;->extends(Lcom/wsw/cospa/activity/OnkeyEncryptActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "\u89e3\u5bc6\u5b8c\u6210"

    .line 3
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u6587\u4ef6\u8bfb\u53d6\u5931\u8d25"

    .line 4
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/OnkeyEncryptActivity$new;->do(Ljava/lang/String;)V

    return-void
.end method
