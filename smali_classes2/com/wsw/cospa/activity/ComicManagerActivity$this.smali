.class Lcom/wsw/cospa/activity/ComicManagerActivity$this;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/ComicManagerActivity;->interface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ComicManagerActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ComicManagerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity$this;->do:Lcom/wsw/cospa/activity/ComicManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirm(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\u7f51\u7edc\u5730\u5740\u4e0d\u5408\u6cd5\uff0c\u8bf7\u68c0\u67e5\u56fe\u6e90\u5730\u5740"

    if-nez v0, :cond_2

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, " "

    const-string v2, ""

    .line 2
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/support/v4/g31;->for(Ljava/lang/String;)Z

    .line 4
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicManagerActivity$this;->do:Lcom/wsw/cospa/activity/ComicManagerActivity;

    invoke-static {p1}, Landroid/support/v4/l22;->package(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/activity/ComicManagerActivity;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {v1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
