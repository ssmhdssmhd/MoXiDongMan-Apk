.class final Lcom/google/protobuf/j1$new$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/j1$new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/j1$new$for$do;
    }
.end annotation


# instance fields
.field public final do:Ljava/lang/String;

.field public final if:Lcom/google/protobuf/j1$new$for$do;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/protobuf/j1$new$for$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/j1$new$for;->do:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/protobuf/j1$new$for;->if:Lcom/google/protobuf/j1$new$for$do;

    return-void
.end method
