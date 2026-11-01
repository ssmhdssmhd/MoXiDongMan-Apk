.class Lcom/wsw/cospa/activity/ChapterBrowseActivity$case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/SaveImageCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/ChapterBrowseActivity;->s1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$case;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFault()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$case;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->J(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Landroid/support/v4/xh1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$case;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->J(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Landroid/support/v4/xh1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const-string v0, "\u4fdd\u5b58\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 3
    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void
.end method

.method public onSucce()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$case;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->J(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Landroid/support/v4/xh1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$case;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->J(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Landroid/support/v4/xh1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const-string v0, "\u4fdd\u5b58\u6210\u529f"

    .line 3
    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void
.end method
