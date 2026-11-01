.class Lcom/wsw/cospa/activity/AppSettingActivity$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/AppSettingActivity;->return()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/AppSettingActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/AppSettingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/AppSettingActivity$if;->do:Lcom/wsw/cospa/activity/AppSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 0

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onConfirm()V
    .locals 5

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/DialogTool$new;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u771f\u7684\u8981\u8fd9\u4e48\u7edd\u60c5\u5417?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    const-string v3, "1F62D"

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u662f\u5426\u5173\u95ed\u5e7f\u544a\uff1f"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/wsw/cospa/utils/DialogTool$try;

    const-string v2, "\u5173\u95ed"

    const-string v3, "\u53d6\u6d88"

    invoke-direct {v1, v2, v3}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/wsw/cospa/activity/AppSettingActivity$if;->do:Lcom/wsw/cospa/activity/AppSettingActivity;

    new-instance v3, Lcom/wsw/cospa/activity/AppSettingActivity$if$do;

    invoke-direct {v3, p0}, Lcom/wsw/cospa/activity/AppSettingActivity$if$do;-><init>(Lcom/wsw/cospa/activity/AppSettingActivity$if;)V

    invoke-static {v2, v0, v1, v3}, Lcom/wsw/cospa/utils/DialogTool;->o(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V

    return-void
.end method
