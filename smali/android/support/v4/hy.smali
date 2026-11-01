.class public final synthetic Landroid/support/v4/hy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/const;

.field public final synthetic for:Lcom/wsw/cospa/bean/ComicShelfBean;

.field public final synthetic if:Lcom/wsw/cospa/model/case;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/model/const;Lcom/wsw/cospa/model/case;Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/hy;->do:Lcom/wsw/cospa/model/const;

    iput-object p2, p0, Landroid/support/v4/hy;->if:Lcom/wsw/cospa/model/case;

    iput-object p3, p0, Landroid/support/v4/hy;->for:Lcom/wsw/cospa/bean/ComicShelfBean;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/hy;->do:Lcom/wsw/cospa/model/const;

    iget-object v1, p0, Landroid/support/v4/hy;->if:Lcom/wsw/cospa/model/case;

    iget-object v2, p0, Landroid/support/v4/hy;->for:Lcom/wsw/cospa/bean/ComicShelfBean;

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, v1, v2, p1}, Lcom/wsw/cospa/model/const;->transient(Lcom/wsw/cospa/model/const;Lcom/wsw/cospa/model/case;Lcom/wsw/cospa/bean/ComicShelfBean;Lretrofit2/Response;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
