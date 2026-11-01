.class public final synthetic Landroid/support/v4/qy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# static fields
.field public static final synthetic do:Landroid/support/v4/qy;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/qy;

    invoke-direct {v0}, Landroid/support/v4/qy;-><init>()V

    sput-object v0, Landroid/support/v4/qy;->do:Landroid/support/v4/qy;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p1}, Lcom/wsw/cospa/model/const;->strictfp(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
