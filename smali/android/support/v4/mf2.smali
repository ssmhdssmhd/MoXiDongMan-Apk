.class public final synthetic Landroid/support/v4/mf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/while;

.field public final synthetic if:Lcom/wsw/cospa/bean/ComicShelfBean;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/model/while;Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/mf2;->do:Lcom/wsw/cospa/model/while;

    iput-object p2, p0, Landroid/support/v4/mf2;->if:Lcom/wsw/cospa/bean/ComicShelfBean;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/mf2;->do:Lcom/wsw/cospa/model/while;

    iget-object v1, p0, Landroid/support/v4/mf2;->if:Lcom/wsw/cospa/bean/ComicShelfBean;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/model/while;->for(Lcom/wsw/cospa/model/while;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/util/List;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
