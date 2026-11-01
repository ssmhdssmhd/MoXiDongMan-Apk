.class public final synthetic Landroid/support/v4/wb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic do:Landroid/support/v4/wb;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/wb;

    invoke-direct {v0}, Landroid/support/v4/wb;-><init>()V

    sput-object v0, Landroid/support/v4/wb;->do:Landroid/support/v4/wb;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/wsw/cospa/dao/do;->this()V

    return-void
.end method
