.class Lcom/wsw/cospa/activity/ComicManagerActivity$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/listener/OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/ComicManagerActivity;->case()V
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
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicManagerActivity$new;->do:Lcom/wsw/cospa/activity/ComicManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/wsw/cospa/bean/ComicShelfGroupBean;Z)V
    .locals 0

    return-void
.end method

.method public onCheckedChanged(Lcom/wsw/cospa/bean/ComicSourceBean;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->setEnable(Z)V

    .line 2
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/dao/DatabaseHelper;->abstract(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    return-void
.end method
