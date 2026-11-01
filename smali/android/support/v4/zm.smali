.class public final synthetic Landroid/support/v4/zm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/try;

.field public final synthetic for:Lcom/wsw/cospa/bean/ChapterListBean;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:Ljava/lang/String;

.field public final synthetic try:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/model/try;Ljava/lang/String;Lcom/wsw/cospa/bean/ChapterListBean;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/zm;->do:Lcom/wsw/cospa/model/try;

    iput-object p2, p0, Landroid/support/v4/zm;->if:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/zm;->for:Lcom/wsw/cospa/bean/ChapterListBean;

    iput-object p4, p0, Landroid/support/v4/zm;->new:Ljava/lang/String;

    iput-object p5, p0, Landroid/support/v4/zm;->try:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/zm;->do:Lcom/wsw/cospa/model/try;

    iget-object v1, p0, Landroid/support/v4/zm;->if:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/zm;->for:Lcom/wsw/cospa/bean/ChapterListBean;

    iget-object v3, p0, Landroid/support/v4/zm;->new:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/zm;->try:Ljava/util/Map;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/wsw/cospa/model/try;->do(Lcom/wsw/cospa/model/try;Ljava/lang/String;Lcom/wsw/cospa/bean/ChapterListBean;Ljava/lang/String;Ljava/util/Map;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
