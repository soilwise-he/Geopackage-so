---
-- title: "Howto: produce a GeoPackage template for INSPIRE Soil data"
-- date: 20/08/2025
-- author: Andrea Lachi - andrea.lachi@crea.gov.it
---

-- Custom triggers are implemented to enforce foreign key constraints
-- even when PRAGMA foreign_keys is disabled (set to 0).
-- These triggers act as a fallback mechanism to maintain referential integrity
-- in environments or connections where foreign key enforcement is not enabled by default.

-- NOTE: SQLite does not enforce foreign key constraints unless PRAGMA foreign_keys = ON
-- is explicitly set for each connection. To prevent data inconsistencies when this setting
-- is OFF, we use custom triggers that manually validate foreign key relationships.


-- ===== Triggers for child table: datastream =====

CREATE TRIGGER IF NOT EXISTS datastream_idfeature_fk_ins
BEFORE INSERT ON "datastream"
WHEN (NEW."idfeature" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "feature" AS p
  WHERE p."id" = NEW."idfeature"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: datastream(idfeature) not found in feature(id)');
END;;

CREATE TRIGGER IF NOT EXISTS datastream_idfeature_fk_upd
BEFORE UPDATE OF "idfeature" ON "datastream"
WHEN (NEW."idfeature" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "feature" AS p
  WHERE p."id" = NEW."idfeature"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: datastream(idfeature) not found in feature(id)');
END;;


-- Parent action triggers for feature -> datastream (on_delete=NO ACTION, on_update=NO ACTION);

CREATE TRIGGER IF NOT EXISTS feature_datastream_fk_restrict_del
BEFORE DELETE ON "feature"
WHEN EXISTS (SELECT 1 FROM "datastream" WHERE "datastream"."idfeature" = OLD."id")
BEGIN
  SELECT RAISE(ABORT, 'FK violation: cannot DELETE feature because child rows exist in datastream');
END;;

CREATE TRIGGER IF NOT EXISTS feature_datastream_fk_restrict_upd
BEFORE UPDATE OF "id" ON "feature"
WHEN EXISTS (SELECT 1 FROM "datastream" WHERE "datastream"."idfeature" = OLD."id")
BEGIN
  SELECT RAISE(ABORT, 'FK violation: cannot UPDATE feature key because child rows exist in datastream');
END;;


-- ===== Triggers for child table: derivedprofilepresenceinsoilbody =====
;

CREATE TRIGGER IF NOT EXISTS derivedprofilepresenceinsoilbody_idsoilprofile_fk_ins
BEFORE INSERT ON "derivedprofilepresenceinsoilbody"
WHEN (NEW."idsoilprofile" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilprofile" AS p
  WHERE p."guidkey" = NEW."idsoilprofile"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: derivedprofilepresenceinsoilbody(idsoilprofile) not found in soilprofile(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS derivedprofilepresenceinsoilbody_idsoilprofile_fk_upd
BEFORE UPDATE OF "idsoilprofile" ON "derivedprofilepresenceinsoilbody"
WHEN (NEW."idsoilprofile" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilprofile" AS p
  WHERE p."guidkey" = NEW."idsoilprofile"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: derivedprofilepresenceinsoilbody(idsoilprofile) not found in soilprofile(guidkey)');
END;;


-- Parent action triggers for soilprofile -> derivedprofilepresenceinsoilbody (on_delete=CASCADE, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS soilprofile_derivedprofilepresenceinsoilbody_fk_cascade_del
AFTER DELETE ON "soilprofile"
BEGIN
  DELETE FROM "derivedprofilepresenceinsoilbody"
   WHERE "derivedprofilepresenceinsoilbody"."idsoilprofile" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS soilprofile_derivedprofilepresenceinsoilbody_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "soilprofile"
BEGIN
  UPDATE "derivedprofilepresenceinsoilbody"
     SET "idsoilprofile" = NEW."guidkey"
   WHERE "derivedprofilepresenceinsoilbody"."idsoilprofile" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS derivedprofilepresenceinsoilbody_idsoilbody_fk_ins
BEFORE INSERT ON "derivedprofilepresenceinsoilbody"
WHEN (NEW."idsoilbody" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilbody" AS p
  WHERE p."guidkey" = NEW."idsoilbody"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: derivedprofilepresenceinsoilbody(idsoilbody) not found in soilbody(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS derivedprofilepresenceinsoilbody_idsoilbody_fk_upd
BEFORE UPDATE OF "idsoilbody" ON "derivedprofilepresenceinsoilbody"
WHEN (NEW."idsoilbody" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilbody" AS p
  WHERE p."guidkey" = NEW."idsoilbody"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: derivedprofilepresenceinsoilbody(idsoilbody) not found in soilbody(guidkey)');
END;;


-- Parent action triggers for soilbody -> derivedprofilepresenceinsoilbody (on_delete=CASCADE, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS soilbody_derivedprofilepresenceinsoilbody_fk_cascade_del
AFTER DELETE ON "soilbody"
BEGIN
  DELETE FROM "derivedprofilepresenceinsoilbody"
   WHERE "derivedprofilepresenceinsoilbody"."idsoilbody" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS soilbody_derivedprofilepresenceinsoilbody_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "soilbody"
BEGIN
  UPDATE "derivedprofilepresenceinsoilbody"
     SET "idsoilbody" = NEW."guidkey"
   WHERE "derivedprofilepresenceinsoilbody"."idsoilbody" = OLD."guidkey";
END;;


-- ===== Triggers for child table: faohorizonnotationtype =====
;

CREATE TRIGGER IF NOT EXISTS faohorizonnotationtype_idprofileelement_fk_ins
BEFORE INSERT ON "faohorizonnotationtype"
WHEN (NEW."idprofileelement" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "profileelement" AS p
  WHERE p."guidkey" = NEW."idprofileelement"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: faohorizonnotationtype(idprofileelement) not found in profileelement(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS faohorizonnotationtype_idprofileelement_fk_upd
BEFORE UPDATE OF "idprofileelement" ON "faohorizonnotationtype"
WHEN (NEW."idprofileelement" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "profileelement" AS p
  WHERE p."guidkey" = NEW."idprofileelement"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: faohorizonnotationtype(idprofileelement) not found in profileelement(guidkey)');
END;;


-- Parent action triggers for profileelement -> faohorizonnotationtype (on_delete=CASCADE, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS profileelement_faohorizonnotationtype_fk_cascade_del
AFTER DELETE ON "profileelement"
BEGIN
  DELETE FROM "faohorizonnotationtype"
   WHERE "faohorizonnotationtype"."idprofileelement" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS profileelement_faohorizonnotationtype_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "profileelement"
BEGIN
  UPDATE "faohorizonnotationtype"
     SET "idprofileelement" = NEW."guidkey"
   WHERE "faohorizonnotationtype"."idprofileelement" = OLD."guidkey";
END;;


-- ===== Triggers for child table: feature =====
;

CREATE TRIGGER IF NOT EXISTS feature_idfeaturetype_fk_ins
BEFORE INSERT ON "feature"
WHEN (NEW."idfeaturetype" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "featuretype" AS p
  WHERE p."id" = NEW."idfeaturetype"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: feature(idfeaturetype) not found in featuretype(id)');
END;;

CREATE TRIGGER IF NOT EXISTS feature_idfeaturetype_fk_upd
BEFORE UPDATE OF "idfeaturetype" ON "feature"
WHEN (NEW."idfeaturetype" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "featuretype" AS p
  WHERE p."id" = NEW."idfeaturetype"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: feature(idfeaturetype) not found in featuretype(id)');
END;;


-- Parent action triggers for featuretype -> feature (on_delete=SET NULL, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS featuretype_feature_fk_setnull_del
AFTER DELETE ON "featuretype"
BEGIN
  UPDATE "feature"
     SET "idfeaturetype" = NULL
   WHERE "feature"."idfeaturetype" = OLD."id";
END;;

CREATE TRIGGER IF NOT EXISTS featuretype_feature_fk_cascade_upd
AFTER UPDATE OF "id" ON "featuretype"
BEGIN
  UPDATE "feature"
     SET "idfeaturetype" = NEW."id"
   WHERE "feature"."idfeaturetype" = OLD."id";
END;;

CREATE TRIGGER IF NOT EXISTS feature_feature_soilderivedobject_fk_ins
BEFORE INSERT ON "feature"
WHEN (NEW."feature_soilderivedobject" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilderivedobject" AS p
  WHERE p."guidkey" = NEW."feature_soilderivedobject"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: feature(feature_soilderivedobject) not found in soilderivedobject(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS feature_feature_soilderivedobject_fk_upd
BEFORE UPDATE OF "feature_soilderivedobject" ON "feature"
WHEN (NEW."feature_soilderivedobject" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilderivedobject" AS p
  WHERE p."guidkey" = NEW."feature_soilderivedobject"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: feature(feature_soilderivedobject) not found in soilderivedobject(guidkey)');
END;;


-- Parent action triggers for soilderivedobject -> feature (on_delete=SET NULL, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS soilderivedobject_feature_fk_setnull_del
AFTER DELETE ON "soilderivedobject"
BEGIN
  UPDATE "feature"
     SET "feature_soilderivedobject" = NULL
   WHERE "feature"."feature_soilderivedobject" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS soilderivedobject_feature_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "soilderivedobject"
BEGIN
  UPDATE "feature"
     SET "feature_soilderivedobject" = NEW."guidkey"
   WHERE "feature"."feature_soilderivedobject" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS feature_feature_profileelement_fk_ins
BEFORE INSERT ON "feature"
WHEN (NEW."feature_profileelement" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "profileelement" AS p
  WHERE p."guidkey" = NEW."feature_profileelement"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: feature(feature_profileelement) not found in profileelement(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS feature_feature_profileelement_fk_upd
BEFORE UPDATE OF "feature_profileelement" ON "feature"
WHEN (NEW."feature_profileelement" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "profileelement" AS p
  WHERE p."guidkey" = NEW."feature_profileelement"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: feature(feature_profileelement) not found in profileelement(guidkey)');
END;;


-- Parent action triggers for profileelement -> feature (on_delete=SET NULL, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS profileelement_feature_fk_setnull_del
AFTER DELETE ON "profileelement"
BEGIN
  UPDATE "feature"
     SET "feature_profileelement" = NULL
   WHERE "feature"."feature_profileelement" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS profileelement_feature_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "profileelement"
BEGIN
  UPDATE "feature"
     SET "feature_profileelement" = NEW."guidkey"
   WHERE "feature"."feature_profileelement" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS feature_feature_soilprofile_fk_ins
BEFORE INSERT ON "feature"
WHEN (NEW."feature_soilprofile" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilprofile" AS p
  WHERE p."guidkey" = NEW."feature_soilprofile"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: feature(feature_soilprofile) not found in soilprofile(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS feature_feature_soilprofile_fk_upd
BEFORE UPDATE OF "feature_soilprofile" ON "feature"
WHEN (NEW."feature_soilprofile" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilprofile" AS p
  WHERE p."guidkey" = NEW."feature_soilprofile"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: feature(feature_soilprofile) not found in soilprofile(guidkey)');
END;;


-- Parent action triggers for soilprofile -> feature (on_delete=SET NULL, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS soilprofile_feature_fk_setnull_del
AFTER DELETE ON "soilprofile"
BEGIN
  UPDATE "feature"
     SET "feature_soilprofile" = NULL
   WHERE "feature"."feature_soilprofile" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS soilprofile_feature_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "soilprofile"
BEGIN
  UPDATE "feature"
     SET "feature_soilprofile" = NEW."guidkey"
   WHERE "feature"."feature_soilprofile" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS feature_feature_soilsite_fk_ins
BEFORE INSERT ON "feature"
WHEN (NEW."feature_soilsite" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilsite" AS p
  WHERE p."guidkey" = NEW."feature_soilsite"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: feature(feature_soilsite) not found in soilsite(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS feature_feature_soilsite_fk_upd
BEFORE UPDATE OF "feature_soilsite" ON "feature"
WHEN (NEW."feature_soilsite" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilsite" AS p
  WHERE p."guidkey" = NEW."feature_soilsite"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: feature(feature_soilsite) not found in soilsite(guidkey)');
END;;


-- Parent action triggers for soilsite -> feature (on_delete=SET NULL, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS soilsite_feature_fk_setnull_del
AFTER DELETE ON "soilsite"
BEGIN
  UPDATE "feature"
     SET "feature_soilsite" = NULL
   WHERE "feature"."feature_soilsite" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS soilsite_feature_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "soilsite"
BEGIN
  UPDATE "feature"
     SET "feature_soilsite" = NEW."guidkey"
   WHERE "feature"."feature_soilsite" = OLD."guidkey";
END;;


-- ===== Triggers for child table: isbasedonobservedsoilprofile =====
;

CREATE TRIGGER IF NOT EXISTS isbasedonobservedsoilprofile_idsoilprofile_fk_ins
BEFORE INSERT ON "isbasedonobservedsoilprofile"
WHEN (NEW."idsoilprofile" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilprofile" AS p
  WHERE p."guidkey" = NEW."idsoilprofile"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: isbasedonobservedsoilprofile(idsoilprofile) not found in soilprofile(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS isbasedonobservedsoilprofile_idsoilprofile_fk_upd
BEFORE UPDATE OF "idsoilprofile" ON "isbasedonobservedsoilprofile"
WHEN (NEW."idsoilprofile" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilprofile" AS p
  WHERE p."guidkey" = NEW."idsoilprofile"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: isbasedonobservedsoilprofile(idsoilprofile) not found in soilprofile(guidkey)');
END;;


-- Parent action triggers for soilprofile -> isbasedonobservedsoilprofile (on_delete=CASCADE, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS soilprofile_isbasedonobservedsoilprofile_fk_cascade_del
AFTER DELETE ON "soilprofile"
BEGIN
  DELETE FROM "isbasedonobservedsoilprofile"
   WHERE "isbasedonobservedsoilprofile"."idsoilprofile" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS soilprofile_isbasedonobservedsoilprofile_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "soilprofile"
BEGIN
  UPDATE "isbasedonobservedsoilprofile"
     SET "idsoilprofile" = NEW."guidkey"
   WHERE "isbasedonobservedsoilprofile"."idsoilprofile" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS isbasedonobservedsoilprofile_idsoilderivedobject_fk_ins
BEFORE INSERT ON "isbasedonobservedsoilprofile"
WHEN (NEW."idsoilderivedobject" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilderivedobject" AS p
  WHERE p."guidkey" = NEW."idsoilderivedobject"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: isbasedonobservedsoilprofile(idsoilderivedobject) not found in soilderivedobject(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS isbasedonobservedsoilprofile_idsoilderivedobject_fk_upd
BEFORE UPDATE OF "idsoilderivedobject" ON "isbasedonobservedsoilprofile"
WHEN (NEW."idsoilderivedobject" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilderivedobject" AS p
  WHERE p."guidkey" = NEW."idsoilderivedobject"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: isbasedonobservedsoilprofile(idsoilderivedobject) not found in soilderivedobject(guidkey)');
END;;


-- Parent action triggers for soilderivedobject -> isbasedonobservedsoilprofile (on_delete=CASCADE, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS soilderivedobject_isbasedonobservedsoilprofile_fk_cascade_del
AFTER DELETE ON "soilderivedobject"
BEGIN
  DELETE FROM "isbasedonobservedsoilprofile"
   WHERE "isbasedonobservedsoilprofile"."idsoilderivedobject" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS soilderivedobject_isbasedonobservedsoilprofile_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "soilderivedobject"
BEGIN
  UPDATE "isbasedonobservedsoilprofile"
     SET "idsoilderivedobject" = NEW."guidkey"
   WHERE "isbasedonobservedsoilprofile"."idsoilderivedobject" = OLD."guidkey";
END;;


-- ===== Triggers for child table: isbasedonsoilbody =====
;

CREATE TRIGGER IF NOT EXISTS isbasedonsoilbody_idsoilbody_fk_ins
BEFORE INSERT ON "isbasedonsoilbody"
WHEN (NEW."idsoilbody" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilbody" AS p
  WHERE p."guidkey" = NEW."idsoilbody"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: isbasedonsoilbody(idsoilbody) not found in soilbody(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS isbasedonsoilbody_idsoilbody_fk_upd
BEFORE UPDATE OF "idsoilbody" ON "isbasedonsoilbody"
WHEN (NEW."idsoilbody" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilbody" AS p
  WHERE p."guidkey" = NEW."idsoilbody"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: isbasedonsoilbody(idsoilbody) not found in soilbody(guidkey)');
END;;


-- Parent action triggers for soilbody -> isbasedonsoilbody (on_delete=CASCADE, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS soilbody_isbasedonsoilbody_fk_cascade_del
AFTER DELETE ON "soilbody"
BEGIN
  DELETE FROM "isbasedonsoilbody"
   WHERE "isbasedonsoilbody"."idsoilbody" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS soilbody_isbasedonsoilbody_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "soilbody"
BEGIN
  UPDATE "isbasedonsoilbody"
     SET "idsoilbody" = NEW."guidkey"
   WHERE "isbasedonsoilbody"."idsoilbody" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS isbasedonsoilbody_idsoilderivedobject_fk_ins
BEFORE INSERT ON "isbasedonsoilbody"
WHEN (NEW."idsoilderivedobject" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilderivedobject" AS p
  WHERE p."guidkey" = NEW."idsoilderivedobject"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: isbasedonsoilbody(idsoilderivedobject) not found in soilderivedobject(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS isbasedonsoilbody_idsoilderivedobject_fk_upd
BEFORE UPDATE OF "idsoilderivedobject" ON "isbasedonsoilbody"
WHEN (NEW."idsoilderivedobject" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilderivedobject" AS p
  WHERE p."guidkey" = NEW."idsoilderivedobject"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: isbasedonsoilbody(idsoilderivedobject) not found in soilderivedobject(guidkey)');
END;;


-- Parent action triggers for soilderivedobject -> isbasedonsoilbody (on_delete=CASCADE, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS soilderivedobject_isbasedonsoilbody_fk_cascade_del
AFTER DELETE ON "soilderivedobject"
BEGIN
  DELETE FROM "isbasedonsoilbody"
   WHERE "isbasedonsoilbody"."idsoilderivedobject" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS soilderivedobject_isbasedonsoilbody_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "soilderivedobject"
BEGIN
  UPDATE "isbasedonsoilbody"
     SET "idsoilderivedobject" = NEW."guidkey"
   WHERE "isbasedonsoilbody"."idsoilderivedobject" = OLD."guidkey";
END;;


-- ===== Triggers for child table: isbasedonsoilderivedobject =====
;

CREATE TRIGGER IF NOT EXISTS isbasedonsoilderivedobject_related_id_fk_ins
BEFORE INSERT ON "isbasedonsoilderivedobject"
WHEN (NEW."related_id" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilderivedobject" AS p
  WHERE p."guidkey" = NEW."related_id"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: isbasedonsoilderivedobject(related_id) not found in soilderivedobject(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS isbasedonsoilderivedobject_related_id_fk_upd
BEFORE UPDATE OF "related_id" ON "isbasedonsoilderivedobject"
WHEN (NEW."related_id" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilderivedobject" AS p
  WHERE p."guidkey" = NEW."related_id"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: isbasedonsoilderivedobject(related_id) not found in soilderivedobject(guidkey)');
END;;


-- Parent action triggers for soilderivedobject -> isbasedonsoilderivedobject (on_delete=CASCADE, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS soilderivedobject_isbasedonsoilderivedobject_fk_cascade_del
AFTER DELETE ON "soilderivedobject"
BEGIN
  DELETE FROM "isbasedonsoilderivedobject"
   WHERE "isbasedonsoilderivedobject"."related_id" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS soilderivedobject_isbasedonsoilderivedobject_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "soilderivedobject"
BEGIN
  UPDATE "isbasedonsoilderivedobject"
     SET "related_id" = NEW."guidkey"
   WHERE "isbasedonsoilderivedobject"."related_id" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS isbasedonsoilderivedobject_base_id_fk_ins
BEFORE INSERT ON "isbasedonsoilderivedobject"
WHEN (NEW."base_id" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilderivedobject" AS p
  WHERE p."guidkey" = NEW."base_id"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: isbasedonsoilderivedobject(base_id) not found in soilderivedobject(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS isbasedonsoilderivedobject_base_id_fk_upd
BEFORE UPDATE OF "base_id" ON "isbasedonsoilderivedobject"
WHEN (NEW."base_id" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilderivedobject" AS p
  WHERE p."guidkey" = NEW."base_id"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: isbasedonsoilderivedobject(base_id) not found in soilderivedobject(guidkey)');
END;;


-- Parent action triggers for soilderivedobject -> isbasedonsoilderivedobject (on_delete=CASCADE, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS soilderivedobject_isbasedonsoilderivedobject_fk_cascade_del
AFTER DELETE ON "soilderivedobject"
BEGIN
  DELETE FROM "isbasedonsoilderivedobject"
   WHERE "isbasedonsoilderivedobject"."base_id" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS soilderivedobject_isbasedonsoilderivedobject_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "soilderivedobject"
BEGIN
  UPDATE "isbasedonsoilderivedobject"
     SET "base_id" = NEW."guidkey"
   WHERE "isbasedonsoilderivedobject"."base_id" = OLD."guidkey";
END;;


-- ===== Triggers for child table: isderivedfrom =====
;

CREATE TRIGGER IF NOT EXISTS isderivedfrom_related_id_fk_ins
BEFORE INSERT ON "isderivedfrom"
WHEN (NEW."related_id" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilprofile" AS p
  WHERE p."guidkey" = NEW."related_id"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: isderivedfrom(related_id) not found in soilprofile(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS isderivedfrom_related_id_fk_upd
BEFORE UPDATE OF "related_id" ON "isderivedfrom"
WHEN (NEW."related_id" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilprofile" AS p
  WHERE p."guidkey" = NEW."related_id"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: isderivedfrom(related_id) not found in soilprofile(guidkey)');
END;;


-- Parent action triggers for soilprofile -> isderivedfrom (on_delete=CASCADE, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS soilprofile_isderivedfrom_fk_cascade_del
AFTER DELETE ON "soilprofile"
BEGIN
  DELETE FROM "isderivedfrom"
   WHERE "isderivedfrom"."related_id" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS soilprofile_isderivedfrom_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "soilprofile"
BEGIN
  UPDATE "isderivedfrom"
     SET "related_id" = NEW."guidkey"
   WHERE "isderivedfrom"."related_id" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS isderivedfrom_base_id_fk_ins
BEFORE INSERT ON "isderivedfrom"
WHEN (NEW."base_id" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilprofile" AS p
  WHERE p."guidkey" = NEW."base_id"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: isderivedfrom(base_id) not found in soilprofile(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS isderivedfrom_base_id_fk_upd
BEFORE UPDATE OF "base_id" ON "isderivedfrom"
WHEN (NEW."base_id" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilprofile" AS p
  WHERE p."guidkey" = NEW."base_id"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: isderivedfrom(base_id) not found in soilprofile(guidkey)');
END;;


-- Parent action triggers for soilprofile -> isderivedfrom (on_delete=CASCADE, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS soilprofile_isderivedfrom_fk_cascade_del
AFTER DELETE ON "soilprofile"
BEGIN
  DELETE FROM "isderivedfrom"
   WHERE "isderivedfrom"."base_id" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS soilprofile_isderivedfrom_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "soilprofile"
BEGIN
  UPDATE "isderivedfrom"
     SET "base_id" = NEW."guidkey"
   WHERE "isderivedfrom"."base_id" = OLD."guidkey";
END;;


-- ===== Triggers for child table: otherhorizon_profileelement =====
;

CREATE TRIGGER IF NOT EXISTS otherhorizon_profileelement_idotherhorizonnotationtype_fk_ins
BEFORE INSERT ON "otherhorizon_profileelement"
WHEN (NEW."idotherhorizonnotationtype" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "otherhorizonnotationtype" AS p
  WHERE p."guidkey" = NEW."idotherhorizonnotationtype"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: otherhorizon_profileelement(idotherhorizonnotationtype) not found in otherhorizonnotationtype(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS otherhorizon_profileelement_idotherhorizonnotationtype_fk_upd
BEFORE UPDATE OF "idotherhorizonnotationtype" ON "otherhorizon_profileelement"
WHEN (NEW."idotherhorizonnotationtype" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "otherhorizonnotationtype" AS p
  WHERE p."guidkey" = NEW."idotherhorizonnotationtype"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: otherhorizon_profileelement(idotherhorizonnotationtype) not found in otherhorizonnotationtype(guidkey)');
END;;


-- Parent action triggers for otherhorizonnotationtype -> otherhorizon_profileelement (on_delete=CASCADE, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS otherhorizonnotationtype_otherhorizon_profileelement_fk_cascade_del
AFTER DELETE ON "otherhorizonnotationtype"
BEGIN
  DELETE FROM "otherhorizon_profileelement"
   WHERE "otherhorizon_profileelement"."idotherhorizonnotationtype" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS otherhorizonnotationtype_otherhorizon_profileelement_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "otherhorizonnotationtype"
BEGIN
  UPDATE "otherhorizon_profileelement"
     SET "idotherhorizonnotationtype" = NEW."guidkey"
   WHERE "otherhorizon_profileelement"."idotherhorizonnotationtype" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS otherhorizon_profileelement_idprofileelement_fk_ins
BEFORE INSERT ON "otherhorizon_profileelement"
WHEN (NEW."idprofileelement" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "profileelement" AS p
  WHERE p."guidkey" = NEW."idprofileelement"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: otherhorizon_profileelement(idprofileelement) not found in profileelement(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS otherhorizon_profileelement_idprofileelement_fk_upd
BEFORE UPDATE OF "idprofileelement" ON "otherhorizon_profileelement"
WHEN (NEW."idprofileelement" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "profileelement" AS p
  WHERE p."guidkey" = NEW."idprofileelement"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: otherhorizon_profileelement(idprofileelement) not found in profileelement(guidkey)');
END;;


-- Parent action triggers for profileelement -> otherhorizon_profileelement (on_delete=CASCADE, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS profileelement_otherhorizon_profileelement_fk_cascade_del
AFTER DELETE ON "profileelement"
BEGIN
  DELETE FROM "otherhorizon_profileelement"
   WHERE "otherhorizon_profileelement"."idprofileelement" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS profileelement_otherhorizon_profileelement_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "profileelement"
BEGIN
  UPDATE "otherhorizon_profileelement"
     SET "idprofileelement" = NEW."guidkey"
   WHERE "otherhorizon_profileelement"."idprofileelement" = OLD."guidkey";
END;;


-- ===== Triggers for child table: othersoilnametype =====
;

CREATE TRIGGER IF NOT EXISTS othersoilnametype_othersoilname_fk_ins
BEFORE INSERT ON "othersoilnametype"
WHEN (NEW."othersoilname" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilprofile" AS p
  WHERE p."guidkey" = NEW."othersoilname"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: othersoilnametype(othersoilname) not found in soilprofile(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS othersoilnametype_othersoilname_fk_upd
BEFORE UPDATE OF "othersoilname" ON "othersoilnametype"
WHEN (NEW."othersoilname" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilprofile" AS p
  WHERE p."guidkey" = NEW."othersoilname"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: othersoilnametype(othersoilname) not found in soilprofile(guidkey)');
END;;


-- Parent action triggers for soilprofile -> othersoilnametype (on_delete=CASCADE, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS soilprofile_othersoilnametype_fk_cascade_del
AFTER DELETE ON "soilprofile"
BEGIN
  DELETE FROM "othersoilnametype"
   WHERE "othersoilnametype"."othersoilname" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS soilprofile_othersoilnametype_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "soilprofile"
BEGIN
  UPDATE "othersoilnametype"
     SET "othersoilname" = NEW."guidkey"
   WHERE "othersoilnametype"."othersoilname" = OLD."guidkey";
END;;


-- ===== Triggers for child table: particlesizefractiontype =====
;

CREATE TRIGGER IF NOT EXISTS particlesizefractiontype_idprofileelement_fk_ins
BEFORE INSERT ON "particlesizefractiontype"
WHEN (NEW."idprofileelement" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "profileelement" AS p
  WHERE p."guidkey" = NEW."idprofileelement"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: particlesizefractiontype(idprofileelement) not found in profileelement(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS particlesizefractiontype_idprofileelement_fk_upd
BEFORE UPDATE OF "idprofileelement" ON "particlesizefractiontype"
WHEN (NEW."idprofileelement" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "profileelement" AS p
  WHERE p."guidkey" = NEW."idprofileelement"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: particlesizefractiontype(idprofileelement) not found in profileelement(guidkey)');
END;;


-- Parent action triggers for profileelement -> particlesizefractiontype (on_delete=CASCADE, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS profileelement_particlesizefractiontype_fk_cascade_del
AFTER DELETE ON "profileelement"
BEGIN
  DELETE FROM "particlesizefractiontype"
   WHERE "particlesizefractiontype"."idprofileelement" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS profileelement_particlesizefractiontype_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "profileelement"
BEGIN
  UPDATE "particlesizefractiontype"
     SET "idprofileelement" = NEW."guidkey"
   WHERE "particlesizefractiontype"."idprofileelement" = OLD."guidkey";
END;;


-- ===== Triggers for child table: profileelement =====
;

CREATE TRIGGER IF NOT EXISTS profileelement_ispartof_fk_ins
BEFORE INSERT ON "profileelement"
WHEN (NEW."ispartof" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilprofile" AS p
  WHERE p."guidkey" = NEW."ispartof"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: profileelement(ispartof) not found in soilprofile(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS profileelement_ispartof_fk_upd
BEFORE UPDATE OF "ispartof" ON "profileelement"
WHEN (NEW."ispartof" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilprofile" AS p
  WHERE p."guidkey" = NEW."ispartof"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: profileelement(ispartof) not found in soilprofile(guidkey)');
END;;


-- Parent action triggers for soilprofile -> profileelement (on_delete=CASCADE, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS soilprofile_profileelement_fk_cascade_del
AFTER DELETE ON "soilprofile"
BEGIN
  DELETE FROM "profileelement"
   WHERE "profileelement"."ispartof" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS soilprofile_profileelement_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "soilprofile"
BEGIN
  UPDATE "profileelement"
     SET "ispartof" = NEW."guidkey"
   WHERE "profileelement"."ispartof" = OLD."guidkey";
END;;


-- ===== Triggers for child table: soilbody_geom =====
;

CREATE TRIGGER IF NOT EXISTS soilbody_geom_idsoilbody_fk_ins
BEFORE INSERT ON "soilbody_geom"
WHEN (NEW."idsoilbody" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilbody" AS p
  WHERE p."guidkey" = NEW."idsoilbody"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: soilbody_geom(idsoilbody) not found in soilbody(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS soilbody_geom_idsoilbody_fk_upd
BEFORE UPDATE OF "idsoilbody" ON "soilbody_geom"
WHEN (NEW."idsoilbody" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilbody" AS p
  WHERE p."guidkey" = NEW."idsoilbody"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: soilbody_geom(idsoilbody) not found in soilbody(guidkey)');
END;;


-- Parent action triggers for soilbody -> soilbody_geom (on_delete=CASCADE, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS soilbody_soilbody_geom_fk_cascade_del
AFTER DELETE ON "soilbody"
BEGIN
  DELETE FROM "soilbody_geom"
   WHERE "soilbody_geom"."idsoilbody" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS soilbody_soilbody_geom_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "soilbody"
BEGIN
  UPDATE "soilbody_geom"
     SET "idsoilbody" = NEW."guidkey"
   WHERE "soilbody_geom"."idsoilbody" = OLD."guidkey";
END;;


-- ===== Triggers for child table: soilplot =====
;

CREATE TRIGGER IF NOT EXISTS soilplot_locatedon_fk_ins
BEFORE INSERT ON "soilplot"
WHEN (NEW."locatedon" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilsite" AS p
  WHERE p."guidkey" = NEW."locatedon"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: soilplot(locatedon) not found in soilsite(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS soilplot_locatedon_fk_upd
BEFORE UPDATE OF "locatedon" ON "soilplot"
WHEN (NEW."locatedon" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilsite" AS p
  WHERE p."guidkey" = NEW."locatedon"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: soilplot(locatedon) not found in soilsite(guidkey)');
END;;


-- Parent action triggers for soilsite -> soilplot (on_delete=NO ACTION, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS soilsite_soilplot_fk_restrict_del
BEFORE DELETE ON "soilsite"
WHEN EXISTS (SELECT 1 FROM "soilplot" WHERE "soilplot"."locatedon" = OLD."guidkey")
BEGIN
  SELECT RAISE(ABORT, 'FK violation: cannot DELETE soilsite because child rows exist in soilplot');
END;;

CREATE TRIGGER IF NOT EXISTS soilsite_soilplot_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "soilsite"
BEGIN
  UPDATE "soilplot"
     SET "locatedon" = NEW."guidkey"
   WHERE "soilplot"."locatedon" = OLD."guidkey";
END;;


-- ===== Triggers for child table: soilprofile =====
;

CREATE TRIGGER IF NOT EXISTS soilprofile_location_fk_ins
BEFORE INSERT ON "soilprofile"
WHEN (NEW."location" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilplot" AS p
  WHERE p."guidkey" = NEW."location"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: soilprofile(location) not found in soilplot(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS soilprofile_location_fk_upd
BEFORE UPDATE OF "location" ON "soilprofile"
WHEN (NEW."location" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilplot" AS p
  WHERE p."guidkey" = NEW."location"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: soilprofile(location) not found in soilplot(guidkey)');
END;;


-- Parent action triggers for soilplot -> soilprofile (on_delete=CASCADE, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS soilplot_soilprofile_fk_cascade_del
AFTER DELETE ON "soilplot"
BEGIN
  DELETE FROM "soilprofile"
   WHERE "soilprofile"."location" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS soilplot_soilprofile_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "soilplot"
BEGIN
  UPDATE "soilprofile"
     SET "location" = NEW."guidkey"
   WHERE "soilprofile"."location" = OLD."guidkey";
END;;


-- ===== Triggers for child table: wrbqualifiergroup_profile =====
;

CREATE TRIGGER IF NOT EXISTS wrbqualifiergroup_profile_idwrbqualifiergrouptype_fk_ins
BEFORE INSERT ON "wrbqualifiergroup_profile"
WHEN (NEW."idwrbqualifiergrouptype" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "wrbqualifiergrouptype" AS p
  WHERE p."guidkey" = NEW."idwrbqualifiergrouptype"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: wrbqualifiergroup_profile(idwrbqualifiergrouptype) not found in wrbqualifiergrouptype(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS wrbqualifiergroup_profile_idwrbqualifiergrouptype_fk_upd
BEFORE UPDATE OF "idwrbqualifiergrouptype" ON "wrbqualifiergroup_profile"
WHEN (NEW."idwrbqualifiergrouptype" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "wrbqualifiergrouptype" AS p
  WHERE p."guidkey" = NEW."idwrbqualifiergrouptype"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: wrbqualifiergroup_profile(idwrbqualifiergrouptype) not found in wrbqualifiergrouptype(guidkey)');
END;;


-- Parent action triggers for wrbqualifiergrouptype -> wrbqualifiergroup_profile (on_delete=CASCADE, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS wrbqualifiergrouptype_wrbqualifiergroup_profile_fk_cascade_del
AFTER DELETE ON "wrbqualifiergrouptype"
BEGIN
  DELETE FROM "wrbqualifiergroup_profile"
   WHERE "wrbqualifiergroup_profile"."idwrbqualifiergrouptype" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS wrbqualifiergrouptype_wrbqualifiergroup_profile_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "wrbqualifiergrouptype"
BEGIN
  UPDATE "wrbqualifiergroup_profile"
     SET "idwrbqualifiergrouptype" = NEW."guidkey"
   WHERE "wrbqualifiergroup_profile"."idwrbqualifiergrouptype" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS wrbqualifiergroup_profile_idsoilprofile_fk_ins
BEFORE INSERT ON "wrbqualifiergroup_profile"
WHEN (NEW."idsoilprofile" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilprofile" AS p
  WHERE p."guidkey" = NEW."idsoilprofile"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: wrbqualifiergroup_profile(idsoilprofile) not found in soilprofile(guidkey)');
END;;

CREATE TRIGGER IF NOT EXISTS wrbqualifiergroup_profile_idsoilprofile_fk_upd
BEFORE UPDATE OF "idsoilprofile" ON "wrbqualifiergroup_profile"
WHEN (NEW."idsoilprofile" IS NOT NULL) AND NOT EXISTS (
  SELECT 1 FROM "soilprofile" AS p
  WHERE p."guidkey" = NEW."idsoilprofile"
)
BEGIN
  SELECT RAISE(ABORT, 'FK violation: wrbqualifiergroup_profile(idsoilprofile) not found in soilprofile(guidkey)');
END;;


-- Parent action triggers for soilprofile -> wrbqualifiergroup_profile (on_delete=CASCADE, on_update=CASCADE);

CREATE TRIGGER IF NOT EXISTS soilprofile_wrbqualifiergroup_profile_fk_cascade_del
AFTER DELETE ON "soilprofile"
BEGIN
  DELETE FROM "wrbqualifiergroup_profile"
   WHERE "wrbqualifiergroup_profile"."idsoilprofile" = OLD."guidkey";
END;;

CREATE TRIGGER IF NOT EXISTS soilprofile_wrbqualifiergroup_profile_fk_cascade_upd
AFTER UPDATE OF "guidkey" ON "soilprofile"
BEGIN
  UPDATE "wrbqualifiergroup_profile"
     SET "idsoilprofile" = NEW."guidkey"
   WHERE "wrbqualifiergroup_profile"."idsoilprofile" = OLD."guidkey";
END;;



-- =========================================================
-- Summary: 27 FK processed, 108 triggers generated.
-- Review before applying.
-- =========================================================
;
