.class public final synthetic Landroid/support/v4/gy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/const;

.field public final synthetic if:Lcom/wsw/cospa/bean/ChapterListBean;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/model/const;Lcom/wsw/cospa/bean/ChapterListBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/gy;->do:Lcom/wsw/cospa/model/const;

    iput-object p2, p0, Landroid/support/v4/gy;->if:Lcom/wsw/cospa/bean/ChapterListBean;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/gy;->do:Lcom/wsw/cospa/model/const;

    iget-object v1, p0, Landroid/support/v4/gy;->if:Lcom/wsw/cospa/bean/ChapterListBean;

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/model/const;->d(Lcom/wsw/cospa/model/const;Lcom/wsw/cospa/bean/ChapterListBean;Lretrofit2/Response;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
