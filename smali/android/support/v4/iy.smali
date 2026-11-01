.class public final synthetic Landroid/support/v4/iy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/const;

.field public final synthetic if:Lretrofit2/Response;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/model/const;Lretrofit2/Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/iy;->do:Lcom/wsw/cospa/model/const;

    iput-object p2, p0, Landroid/support/v4/iy;->if:Lretrofit2/Response;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/iy;->do:Lcom/wsw/cospa/model/const;

    iget-object v1, p0, Landroid/support/v4/iy;->if:Lretrofit2/Response;

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/model/const;->volatile(Lcom/wsw/cospa/model/const;Lretrofit2/Response;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
