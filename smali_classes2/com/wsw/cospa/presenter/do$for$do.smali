.class Lcom/wsw/cospa/presenter/do$for$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/dao/DatabaseHelper$OnUpgradeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/presenter/do$for;->do(Lcom/wsw/cospa/bean/ComicContentBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/presenter/do$for;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/presenter/do$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/presenter/do$for$do;->do:Lcom/wsw/cospa/presenter/do$for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpgradeChange()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$for$do;->do:Lcom/wsw/cospa/presenter/do$for;

    iget-object v0, v0, Lcom/wsw/cospa/presenter/do$for;->if:Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Landroid/support/v4/m7;->for()Lcom/wsw/cospa/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;

    invoke-interface {v0}, Lcom/wsw/cospa/contract/ChapterBrowseContract$View;->hideProgress()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/presenter/do$for$do;->do:Lcom/wsw/cospa/presenter/do$for;

    iget-object v1, v0, Lcom/wsw/cospa/presenter/do$for;->if:Lcom/wsw/cospa/presenter/do;

    iget-object v0, v0, Lcom/wsw/cospa/presenter/do$for;->do:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/presenter/do;->final(Lcom/wsw/cospa/bean/ChapterListBean;)V

    return-void
.end method
