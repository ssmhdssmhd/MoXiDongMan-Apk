.class public final synthetic Landroid/support/v4/dk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/presenter/do;

.field public final synthetic if:Lcom/wsw/cospa/bean/ChapterListBean;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ChapterListBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/dk;->do:Lcom/wsw/cospa/presenter/do;

    iput-object p2, p0, Landroid/support/v4/dk;->if:Lcom/wsw/cospa/bean/ChapterListBean;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/dk;->do:Lcom/wsw/cospa/presenter/do;

    iget-object v1, p0, Landroid/support/v4/dk;->if:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/presenter/do;->private(Lcom/wsw/cospa/presenter/do;Lcom/wsw/cospa/bean/ChapterListBean;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
