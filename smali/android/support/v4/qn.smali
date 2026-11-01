.class public final synthetic Landroid/support/v4/qn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/case;

.field public final synthetic for:Lcom/wsw/cospa/bean/ComicShelfBean;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/model/case;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/qn;->do:Lcom/wsw/cospa/model/case;

    iput-object p2, p0, Landroid/support/v4/qn;->if:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/qn;->for:Lcom/wsw/cospa/bean/ComicShelfBean;

    iput-object p4, p0, Landroid/support/v4/qn;->new:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/qn;->do:Lcom/wsw/cospa/model/case;

    iget-object v1, p0, Landroid/support/v4/qn;->if:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/qn;->for:Lcom/wsw/cospa/bean/ComicShelfBean;

    iget-object v3, p0, Landroid/support/v4/qn;->new:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/wsw/cospa/model/case;->do(Lcom/wsw/cospa/model/case;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
