.class Lfreemarker/debug/impl/do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/debug/impl/do;->case()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lfreemarker/debug/impl/do;


# direct methods
.method public constructor <init>(Lfreemarker/debug/impl/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfreemarker/debug/impl/do$do;->do:Lfreemarker/debug/impl/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/debug/impl/do$do;->do:Lfreemarker/debug/impl/do;

    invoke-static {v0}, Lfreemarker/debug/impl/do;->do(Lfreemarker/debug/impl/do;)V

    return-void
.end method
