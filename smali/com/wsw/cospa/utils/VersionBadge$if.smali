.class public Lcom/wsw/cospa/utils/VersionBadge$if;
.super Ljava/lang/Object;
.source "VersionBadge.java"

.implements Ljava/lang/Runnable;


# instance fields
.field private do:Ljava/lang/String;

.field private if:Ljava/lang/String;

.field private try:Z

.field private case:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/utils/VersionBadge$if;->case:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/wsw/cospa/utils/VersionBadge$if;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/wsw/cospa/utils/VersionBadge$if;->if:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/wsw/cospa/utils/VersionBadge$if;->try:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "当前 v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/utils/VersionBadge$if;->do:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/utils/VersionBadge$if;->if:Ljava/lang/String;

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, " · 最新获取失败"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, " · 最新 v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/wsw/cospa/utils/VersionBadge$if;->try:Z

    if-eqz v1, :cond_1

    const-string v1, "（可更新）"

    goto :goto_1

    :cond_1
    const-string v1, "（已是最新）"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/utils/VersionBadge$if;->case:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
