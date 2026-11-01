.class public final synthetic Landroid/support/v4/i7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Lretrofit2/Response;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Z


# direct methods
.method public synthetic constructor <init>(Lretrofit2/Response;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/i7;->do:Lretrofit2/Response;

    iput-boolean p2, p0, Landroid/support/v4/i7;->if:Z

    iput-object p3, p0, Landroid/support/v4/i7;->for:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/i7;->do:Lretrofit2/Response;

    iget-boolean v1, p0, Landroid/support/v4/i7;->if:Z

    iget-object v2, p0, Landroid/support/v4/i7;->for:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/wsw/cospa/model/impl/if;->new(Lretrofit2/Response;ZLjava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
