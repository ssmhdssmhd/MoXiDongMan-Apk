.class public final synthetic Landroid/support/v4/kh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ChapterActivity;

.field public final synthetic for:Ljava/util/List;

.field public final synthetic if:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/activity/ChapterActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/kh;->do:Lcom/wsw/cospa/activity/ChapterActivity;

    iput-object p2, p0, Landroid/support/v4/kh;->if:Ljava/util/List;

    iput-object p3, p0, Landroid/support/v4/kh;->for:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/kh;->do:Lcom/wsw/cospa/activity/ChapterActivity;

    iget-object v1, p0, Landroid/support/v4/kh;->if:Ljava/util/List;

    iget-object v2, p0, Landroid/support/v4/kh;->for:Ljava/util/List;

    invoke-static {v0, v1, v2, p1}, Lcom/wsw/cospa/activity/ChapterActivity;->import(Lcom/wsw/cospa/activity/ChapterActivity;Ljava/util/List;Ljava/util/List;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
