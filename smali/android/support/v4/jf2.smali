.class public final synthetic Landroid/support/v4/jf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Ljava/util/List;

.field public final synthetic if:Lcom/wsw/cospa/bean/ComicShelfBean;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/jf2;->do:Ljava/util/List;

    iput-object p2, p0, Landroid/support/v4/jf2;->if:Lcom/wsw/cospa/bean/ComicShelfBean;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/jf2;->do:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v4/jf2;->if:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/model/while;->do(Ljava/util/List;Lcom/wsw/cospa/bean/ComicShelfBean;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
