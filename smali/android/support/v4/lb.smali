.class public final synthetic Landroid/support/v4/lb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic do:Landroid/support/v4/lb;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/lb;

    invoke-direct {v0}, Landroid/support/v4/lb;-><init>()V

    sput-object v0, Landroid/support/v4/lb;->do:Landroid/support/v4/lb;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lretrofit2/Response;

    invoke-static {p1}, Lcom/wsw/cospa/model/do;->static(Lretrofit2/Response;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
