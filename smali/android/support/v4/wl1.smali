.class public final synthetic Landroid/support/v4/wl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic do:Landroid/support/v4/wl1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/wl1;

    invoke-direct {v0}, Landroid/support/v4/wl1;-><init>()V

    sput-object v0, Landroid/support/v4/wl1;->do:Landroid/support/v4/wl1;

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

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/wsw/cospa/model/do;->b(Ljava/util/List;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method
