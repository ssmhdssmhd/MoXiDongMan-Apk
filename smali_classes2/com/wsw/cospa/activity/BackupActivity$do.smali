.class Lcom/wsw/cospa/activity/BackupActivity$do;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/BackupActivity;->onRestoreComicClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/BackupActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/BackupActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/BackupActivity$do;->do:Lcom/wsw/cospa/activity/BackupActivity;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity$do;->do:Lcom/wsw/cospa/activity/BackupActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/BackupActivity;->switch(Lcom/wsw/cospa/activity/BackupActivity;)Landroid/support/v4/xh1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/Boolean;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/BackupActivity$do;->do:Lcom/wsw/cospa/activity/BackupActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/BackupActivity;->switch(Lcom/wsw/cospa/activity/BackupActivity;)Landroid/support/v4/xh1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u6062\u590d\u6210\u529f"

    .line 4
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/support/v4/hm1;->if([Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Landroid/support/v4/jm1;->case()Landroid/support/v4/jm1;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/support/v4/jm1;->if([Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Landroid/support/v4/k61;->case()Landroid/support/v4/k61;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/support/v4/k61;->if([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u6062\u590d\u5931\u8d25"

    .line 8
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/BackupActivity$do;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method
