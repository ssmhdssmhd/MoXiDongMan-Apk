.class public final synthetic Landroid/support/v4/ey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/const;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/model/const;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ey;->do:Lcom/wsw/cospa/model/const;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ey;->do:Lcom/wsw/cospa/model/const;

    check-cast p1, Lretrofit2/Response;

    invoke-static {v0, p1}, Lcom/wsw/cospa/model/const;->package(Lcom/wsw/cospa/model/const;Lretrofit2/Response;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
